class CreateSaucers < ActiveRecord::Migration[7.0]
  def change
    create_table :saucers do |t|
      t.string :name, null: false
      t.boolean :available, default: true, null: false

      t.timestamps
    end
  end
end
