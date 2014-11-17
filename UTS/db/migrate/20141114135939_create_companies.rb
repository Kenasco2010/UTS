class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :address
      t.integer :contact
      t.string :logo
      t.references :bill, index: true

      t.timestamps
    end
  end
end
