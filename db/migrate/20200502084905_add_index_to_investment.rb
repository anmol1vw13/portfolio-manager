class AddIndexToInvestment < ActiveRecord::Migration[5.1]
  def change
    add_index :investments, [:company_id, :round], unique: true
  end
end
