require "iban-tools"

class IbanFieldValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    if value.present?
      iban = IBANTools::IBAN.new(value)
      validation_errors = iban.validation_errors

      unless validation_errors.empty?
        object.errors[attribute] << (options[:message] || "is not a valid IBAN string: #{validation_errors.join(", ")}")
      end
    end
  end
end