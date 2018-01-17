class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :iban_string
      t.timestamps
    end
  end
end
