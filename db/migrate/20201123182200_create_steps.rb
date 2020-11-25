class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.integer :project_id
      t.string :description
      t.integer :step

      t.timestamps
    end
  end
end
