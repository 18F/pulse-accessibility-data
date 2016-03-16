require 'bundler/setup'
require 'pry'
require 'csv'

inspect_csv = File.read('inspect.csv')

domains = []
CSV.parse(inspect_csv, headers: true) do |row|
  domains << row.to_hash
end

redirected_domains, non_redirected_domains = domains.partition {|domain| domain['Redirect'] == 'True'}

destinations_of_redirects = redirected_domains.map {|domain| domain['Redirect To']}

final_domains = (
                  destinations_of_redirects +
                  non_redirected_domains.map {|d| d['Canonical']}
                ).uniq.reject(&:nil?)

CSV.open('domains.csv', 'wb') do |csv|
  final_domains.each do |domain|
    csv << [domain, nil]
  end
end
