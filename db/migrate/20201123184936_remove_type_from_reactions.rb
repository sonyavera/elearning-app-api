class RemoveTypeFromReactions < ActiveRecord::Migration[6.0]
  def change
    remove_column :reactions, :type, :string
  end
end
