require 'iban-tools'

class IbanValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    iban = IBANTools::IBAN.new(value)
    validation_errors = iban.validation_errors

    object.errors.add(attribute, message: (options[:message] || error_string(validation_errors))) unless validation_errors.empty?
  end

  private

  def error_string(validation_errors)
    string = I18n.t('iban.validation.default_message', default: 'is not a valid IBAN string: ')
    validation_errors = validation_errors.map do |error|
      case error.to_sym
      when :too_short            then I18n.t('iban.validation.too_short', default: 'too short')
      when :bad_chars            then I18n.t('iban.validation.bad_chars', default: 'bad chars')
      when :bad_check_digits     then I18n.t('iban.validation.bad_check_digits', default: 'bad check digits')
      when :unknown_country_code then I18n.t('iban.validation.unknown_country_code', default: 'unknown country code')
      when :bad_length           then I18n.t('iban.validation.bad_length', default: 'bad length')
      when :bad_format           then I18n.t('iban.validation.bad_format', default: 'bad format')
      end
    end
    string << validation_errors.join(', ').to_s
  end
end
