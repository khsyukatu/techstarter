class RemoveMovieFromChapters < ActiveRecord::Migration
  def change
    remove_column :chapters, :movie
    remove_column :chapters, :body
  end
end
