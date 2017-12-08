class CreateCustom2s < ActiveRecord::Migration[5.1]
  def change
    create_table :custom2s do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
