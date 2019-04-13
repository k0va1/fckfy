# Rails API tempalate

## Requirements:
* Ruby > 2.3
* Postgresql 9+

## Template contains:
* Rails without JS, API only
* Postresql
* RSpec + Collection matchers + Json matcher
* Shoulda Matchers
* FactoryBot
* Faker
* Rubocop
* fast_jsonapi for supporting http://jsonapi.org/ specification

## Note: 
By default `username` for development database sets as your current username in the OS.

## Usage:
```bash
export PROJECT_NAME=YOUR_PROJECT_NAME
export PROJECT_CAMELCASE_NAME=YOUR_PROJECT_CAMELCASE_NAME
git clone https://gitlab.com/kova1/rails_api_template.git ./$PROJECT_NAME && cd $PROJECT_NAME
./init.sh
rm init.sh
```
