class CreateInvestorKeyPeople < ActiveRecord::Migration[5.1]
  def change
    create_table :investor_key_people do |t|
      t.string :name
      t.string :email_id
      t.string :mobile
      t.references :investor, foreign_key: true

      t.timestamps
    end
  end
end
