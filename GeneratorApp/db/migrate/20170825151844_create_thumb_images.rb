class CreateThumbImages < ActiveRecord::Migration[5.1]
  def change
    create_table :thumb_images do |t|
      t.string :header
      t.text :body

      t.timestamps
    end
  end
end
