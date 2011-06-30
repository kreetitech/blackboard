class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.integer :member_id, :null => false
      t.text :address
      t.string :zipcode
      t.string :city
      t.string :state
      t.string :country
      t.string :phone_resi
      t.string :phone_mob
      t.timestamps
    end
    add_foreign_key :addresses, :member_id, :members, :id  
  end

  def self.down
    drop_table :addresses
  end
end
