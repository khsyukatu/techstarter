class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :chapter, index: true
      t.integer :number
      t.string :title
      t.text :body
      t.string :image
      t.text :movie
      t.integer :post_type

      t.timestamps
    end
  end
end
