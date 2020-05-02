class AddIndexToInvestorFundDetail < ActiveRecord::Migration[5.1]
  def change
    add_index :investor_fund_details, [:investor_id, :fund_id], unique: true
  end
end
