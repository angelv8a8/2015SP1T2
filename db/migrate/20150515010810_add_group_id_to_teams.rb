class AddGroupIdToTeams < ActiveRecord::Migration
  def change

  	 add_column :Teams, :group_id, :integer
  end
end
