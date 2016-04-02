class AddStatusToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :status, :boolean
    add_column :lessons, :description, :text
  end
end
