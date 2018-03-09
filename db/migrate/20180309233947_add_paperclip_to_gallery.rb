class AddPaperclipToGallery < ActiveRecord::Migration[5.1]
  def change
    add_attachment :galleries, :image
  end
end
