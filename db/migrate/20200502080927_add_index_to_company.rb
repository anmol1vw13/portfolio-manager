# frozen_string_literal: true

class AddIndexToCompany < ActiveRecord::Migration[5.1]
  def change
    add_index :companies, :registered_name, unique: true
  end
end
