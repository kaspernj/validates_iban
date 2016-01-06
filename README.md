[![Code Climate](https://codeclimate.com/github/kaspernj/validates_iban/badges/gpa.svg)](https://codeclimate.com/github/kaspernj/validates_iban)
[![Test Coverage](https://codeclimate.com/github/kaspernj/validates_iban/badges/coverage.svg)](https://codeclimate.com/github/kaspernj/validates_iban)
[![Build Status](https://img.shields.io/shippable/54a7b728d46935d5fbc15f77.svg)](https://app.shippable.com/projects/54a7b728d46935d5fbc15f77/builds/latest)

# ValidatesIban

ActiveRecord validator for IBAN codes using this project to do the actual validation:
https://github.com/iulianu/iban-tools

This project rocks and uses MIT-LICENSE.


## Installation

Add to your Gemfile and bundle:
```ruby
gem "validates_iban"
```


## Usage

```ruby
class Account < ActiveRecord::Base
  validates :iban_string, iban: true
end
```
