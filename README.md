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
