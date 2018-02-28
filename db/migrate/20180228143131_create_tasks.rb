class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :priority
      t.belongs_to :list, foreign_key: true

      t.timestamps
    end
  end
end
