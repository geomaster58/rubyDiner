class CreateCoolios < ActiveRecord::Migration[5.1]
  def change
    create_table :coolios do |t|
      t.string :title
      t.text :body
      t.boolean :honest
      t.time :timeOfDay

      t.timestamps
    end
  end
end
