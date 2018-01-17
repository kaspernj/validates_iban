require "spec_helper"

describe Account do
  it "returns too short for short strings" do
    account = Account.new(iban_string: "123")
    expect(account).to be_invalid
    expect(account.errors.full_messages).to eq ["Iban string is not a valid IBAN string: too short"]
  end

  it "accepts valid strings" do
    account = Account.new(iban_string: "GB82 WEST 1234 5698 7654 32")
    expect(account).to be_valid
  end

  it "doesnt allow nil-values since they should be done with allow_blank" do
    account = Account.new
    expect(account).to be_invalid
  end
end
