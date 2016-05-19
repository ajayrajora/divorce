class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :work_phone
      t.string :home_phone
      t.string :fax
      t.string :email
      t.references :plan, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
