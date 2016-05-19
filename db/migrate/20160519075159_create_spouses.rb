class CreateSpouses < ActiveRecord::Migration
  def change
    create_table :spouses do |t|
      t.string :name
      t.string :work_phone
      t.string :home_phone
      t.string :fax
      t.string :email
      t.references :client, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
