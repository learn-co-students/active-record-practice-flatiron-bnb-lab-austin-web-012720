class CreateListings < ActiveRecord::Migration[4.2]
    def change 
        create_table :listings do |t|
            t.string :title
            t.float :price
            t.string :address
            t.string :listing_type
            t.string :description
            t.integer :host_id
            t.integer :neighborhood_id
        end
    end
end