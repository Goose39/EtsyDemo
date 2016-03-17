class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :Name
      t.text :description
      t.decimal :price

      t.timestamps null: false
    end
  end
end
