class CreateCompanyFinancials < ActiveRecord::Migration[5.1]
  def change
    create_table :company_financials do |t|
      t.timestamp :date
      t.integer :revenue
      t.integer :burn
      t.integer :closing_cash
      t.references :company, foreign_key: true

      t.timestamps
    end
    add_index :company_financials, [:date, :company_id], unique: true
  end
end
