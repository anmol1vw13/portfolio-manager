# frozen_string_literal: true

class CreateInvestorKeyMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :investor_key_members do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.references :investor, foreign_key: true

      t.timestamps
    end
  end
end
