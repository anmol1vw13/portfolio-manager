# frozen_string_literal: true

class CreateInvestmentDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :investment_details do |t|
      t.integer :money
      t.integer :percentage_holding
      t.references :investor, foreign_key: true
      t.references :investment, foreign_key: true

      t.timestamps
    end
  end
end
