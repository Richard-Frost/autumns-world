class AddDescriptionColumnToPosts < ActiveRecord::Migration[5.2]
  def change
  	add_column :posts, :description, :string, default: "Autumn's Blog Post"
  end
end
