class AddYoutubeIdToPosts < ActiveRecord::Migration[5.2]
  def change
  	add_column :posts, :youtube_id, :string, default: nil
  end
end
