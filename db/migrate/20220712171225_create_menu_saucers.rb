class CreateMenuSaucers < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_saucers do |t|
      t.references :menu, null: false, foreign_key: true
      t.references :saucer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
