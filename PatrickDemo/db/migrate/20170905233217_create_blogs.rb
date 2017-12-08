class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :friend
      t.text :body
      t.boolean :truth

      t.timestamps
    end
  end
end
