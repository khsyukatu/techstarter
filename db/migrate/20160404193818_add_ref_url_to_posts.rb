class AddRefUrlToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :ref_url, :string
  end
end
