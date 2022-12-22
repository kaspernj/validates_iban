require 'iban-tools'

class IbanValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    iban = IBANTools::IBAN.new(value)
    validation_errors = iban.validation_errors

    validation_errors.each do |error|
      error_type = error.to_sym
      error_text = case error_type
        when :too_short then I18n.t('iban.validation.too_short', default: 'is too short')
        when :bad_chars then I18n.t('iban.validation.bad_chars', default: 'has bad characters')
        when :bad_check_digits then I18n.t('iban.validation.bad_check_digits', default: 'has bad check digits')
        when :unknown_country_code then I18n.t('iban.validation.unknown_country_code', default: 'has unknown country code')
        when :bad_length then I18n.t('iban.validation.bad_length', default: 'has a bad length')
        when :bad_format then I18n.t('iban.validation.bad_format', default: 'has a bad format')
      end

      object.errors.add(attribute, error_type, message: (options[:message] || error_text))
    end
  end
end
