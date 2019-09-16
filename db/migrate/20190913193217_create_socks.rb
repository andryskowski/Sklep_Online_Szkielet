class CreateSocks < ActiveRecord::Migration[6.0]
  def change
    create_table :socks do |t|
      t.string :model
      t.text :description
      t.string :title
      t.decimal :price

      t.timestamps
    end
  end
end
