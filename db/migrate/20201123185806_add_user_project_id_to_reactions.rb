class AddUserProjectIdToReactions < ActiveRecord::Migration[6.0]
  def change
    add_column :reactions, :user_project_id, :integer
  end
end
