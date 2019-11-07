class AddPicUrlToPosts < ActiveRecord::Migration[5.2]
  def change
  	add_column :posts, :pic_url, :string, default: nil
  end
end
