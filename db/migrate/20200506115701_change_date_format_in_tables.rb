# frozen_string_literal: true

class ChangeDateFormatInTables < ActiveRecord::Migration[5.1]
  def change
    change_column :companies, :founded, :date
    change_column :funds, :formation_date, :date
    change_column :investments, :investment_date, 'date USING CAST(investment_date AS date)'
    remove_column :investments, :timestamp, :string
  end
end
