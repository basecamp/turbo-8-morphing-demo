class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.references :project, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
