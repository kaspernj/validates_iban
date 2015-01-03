require "iban-tools"

class IbanValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    unless IBANTools::IBAN.valid?(value)
      object.errors[attribute] << options[:message] || "is not a valid IBAN string"
    end
  end
end
