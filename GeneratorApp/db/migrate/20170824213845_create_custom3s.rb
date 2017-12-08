class CreateCustom3s < ActiveRecord::Migration[5.1]
  def change
    create_table :custom3s do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
