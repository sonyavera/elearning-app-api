class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.string :type
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end
