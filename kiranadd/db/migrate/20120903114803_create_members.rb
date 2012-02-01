class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|

      t.string :fname
      t.string :lname
      t.string :lphone
      t.string :mob
      t.string :email
      t.string :haddressl1
      t.string :haddressl2
      t.string :haddressl3
      t.integer :hpincode
      t.string :hcity
      t.string :oaddressl1
      t.string :oaddressl2
      t.string :oaddressl3
      t.string :ocity
      t.integer :opincode
      t.boolean :hck,:default=>true
      t.boolean :ock,:default=>true
     
    end
  end
end
