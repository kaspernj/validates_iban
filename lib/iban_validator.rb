require 'iban-tools'

class IbanValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    iban = IBANTools::IBAN.new(value)
    validation_errors = iban.validation_errors

    unless validation_errors.empty?
      object.errors[attribute] << (options[:message] || error_string(validation_errors))
    end
  end

  private

  def error_string(validation_errors)
    string = I18n.t('iban.validation.default_message', default: 'is not a valid IBAN string: ')
    validation_errors = validation_errors.map do |error|
      case error.to_sym
      when :too_short            then I18n.t('iban.validation.too_short')
      when :bad_chars            then I18n.t('iban.validation.bad_chars')
      when :bad_check_digits     then I18n.t('iban.validation.bad_check_digits')
      when :unknown_country_code then I18n.t('iban.validation.unknown_country_code')
      when :bad_length           then I18n.t('iban.validation.bad_length')
      when :bad_format           then I18n.t('iban.validation.bad_format')
      end
    end
    string << validation_errors.join(', ').to_s
  end
end
