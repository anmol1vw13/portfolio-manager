class CreateInvestments < ActiveRecord::Migration[5.1]
  def change
    create_table :investments do |t|
      t.string :round
      t.string :investment_date
      t.string :timestamp
      t.integer :pre_money
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
