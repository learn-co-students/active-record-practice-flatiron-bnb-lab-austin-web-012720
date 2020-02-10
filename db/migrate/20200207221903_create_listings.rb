class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :neighborhoods do |t|
      t.string :name 
      t.integer :city_id
      t.integer :guest_id 
    end
  end
end
