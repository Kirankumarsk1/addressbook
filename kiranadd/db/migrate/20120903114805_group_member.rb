class CreateGroupMember < ActiveRecord::Migration
  def up
  	create_table :group_members ,:id=>false do |t|
  		t.integer "member_id"
  		t.integer "group_id"
  	end
  	add_index :groups_members,["member_id","group_id"]
	end

  def down
  	drop_table :groups_members
  end
end
