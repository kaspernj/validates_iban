[![Build Status](https://api.shippable.com/projects/54a7b728d46935d5fbc15f77/badge?branchName=master)](https://app.shippable.com/projects/54a7b728d46935d5fbc15f77/builds/latest)
[![Code Climate](https://codeclimate.com/github/kaspernj/iban_validator/badges/gpa.svg)](https://codeclimate.com/github/kaspernj/iban_validator)
[![Test Coverage](https://codeclimate.com/github/kaspernj/iban_validator/badges/coverage.svg)](https://codeclimate.com/github/kaspernj/iban_validator)

# IbanValidator

This project rocks and uses MIT-LICENSE.


## Installation

Add to your Gemfile and bundle:
```ruby
gem "iban_validator"
```


## Usage

```ruby
class Account < ActiveRecord::Base
  validates :iban_string, iban_field: true
end
```
