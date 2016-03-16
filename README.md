# pulse-accessibility-data

A repo of data (and some scripts) for collecting accessibility data across .gov domains.

## Data

This repo contains data. You don't need to run any of the included scripts to use the data.

### inspect.csv

This CSV is the result of running [domain-scan](https://github.com/18f/domain-scan) using the `inspect` scan (starting with these [domains](https://github.com/GSA/data/blob/gh-pages/dotgov-domains/2016-01-19-federal.csv)).

### domains.csv

The result of running `select_domains.rb`. This script creates a final list of domains, after redirects have been followed and after duplicates and blank values have been removed.

## Usage

This repo is a bit of a scratch pad, many things are subject to change. That said, here's how to use the included scripts:

Dependencies:

- Ruby

Clone this repo, and `cd` into it. Run `bundle`. Then run `ruby select_domains.rb`.

## Public domain

This project is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).

All contributions to this project will be released under the CC0
dedication. By submitting a pull request, you are agreeing to comply
with this waiver of copyright interest.
