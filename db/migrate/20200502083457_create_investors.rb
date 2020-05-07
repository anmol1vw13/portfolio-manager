# frozen_string_literal: true

class CreateInvestors < ActiveRecord::Migration[5.1]
  def change
    create_table :investors do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
    add_index :investors, :name, unique: true
  end
end
