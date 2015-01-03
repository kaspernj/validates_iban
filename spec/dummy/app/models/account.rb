class Account < ActiveRecord::Base
  validates :iban_string, iban: true
end
