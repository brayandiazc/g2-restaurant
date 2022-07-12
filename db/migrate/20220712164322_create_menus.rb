class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
