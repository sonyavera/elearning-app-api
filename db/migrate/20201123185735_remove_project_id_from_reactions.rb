class RemoveProjectIdFromReactions < ActiveRecord::Migration[6.0]
  def change
    remove_column :reactions, :project_id, :integer
  end
end
