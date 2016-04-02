class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.references :lesson, index: true
      t.string :title
      t.integer :number
      t.text :body
      t.text :movie

      t.timestamps
    end
  end
end
