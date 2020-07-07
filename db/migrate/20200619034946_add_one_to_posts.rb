class AddOneToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :one, :text
    add_column :posts, :two, :text
  end
end
