class AddIndexToInvestmentDetail < ActiveRecord::Migration[5.1]
  def change
    add_index :investment_details, [:investment_id, :investor_id], unique: true
  end
end
