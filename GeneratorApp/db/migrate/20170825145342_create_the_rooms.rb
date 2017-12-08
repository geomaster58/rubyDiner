class CreateTheRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :the_rooms do |t|
      t.string :header
      t.text :body

      t.timestamps
    end
  end
end
