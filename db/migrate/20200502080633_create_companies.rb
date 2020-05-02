class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :registered_name
      t.timestamp :founded
      t.string :sector

      t.timestamps
    end
  end
end
