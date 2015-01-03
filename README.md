[![Build Status](https://api.shippable.com/projects/54a7b728d46935d5fbc15f77/badge?branchName=master)](https://app.shippable.com/projects/54a7b728d46935d5fbc15f77/builds/latest)
[![Code Climate](https://codeclimate.com/github/kaspernj/validates_iban/badges/gpa.svg)](https://codeclimate.com/github/kaspernj/validates_iban)
[![Test Coverage](https://codeclimate.com/github/kaspernj/validates_iban/badges/coverage.svg)](https://codeclimate.com/github/kaspernj/validates_iban)

# ValidatesIban

This project rocks and uses MIT-LICENSE.


## Installation

Add to your Gemfile and bundle:
```ruby
gem "validates_iban"
```


## Usage

```ruby
class Account < ActiveRecord::Base
  validates :iban_string, iban_field: true
end
```
