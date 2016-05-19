class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.references :client, index: true, foreign_key: true
      t.references :spouse, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
