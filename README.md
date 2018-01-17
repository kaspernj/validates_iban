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
