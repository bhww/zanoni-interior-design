class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.references :gallery, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
