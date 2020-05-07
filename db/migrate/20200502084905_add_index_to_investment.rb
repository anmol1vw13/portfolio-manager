# frozen_string_literal: true

class AddIndexToInvestment < ActiveRecord::Migration[5.1]
  def change
    add_index :investments, %i[company_id round], unique: true
  end
end
