class CreateNoStyles < ActiveRecord::Migration[5.1]
  def change
    create_table :no_styles do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
