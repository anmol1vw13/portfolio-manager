# frozen_string_literal: true

class CreateFunds < ActiveRecord::Migration[5.1]
  def change
    create_table :funds do |t|
      t.string :name
      t.string :key
      t.timestamp :formation_date

      t.timestamps
    end
    add_index :funds, :name, unique: true
  end
end
