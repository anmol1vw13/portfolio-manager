class CreateInvestorFundDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :investor_fund_details do |t|
      t.integer :money
      t.references :fund, foreign_key: true
      t.references :investor, foreign_key: true

      t.timestamps
    end
  end
end
