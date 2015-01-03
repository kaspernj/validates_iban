class Account < ActiveRecord::Base
  validates :iban_string, iban_field: true
end
