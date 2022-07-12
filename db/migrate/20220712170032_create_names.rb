class CreateNames < ActiveRecord::Migration[7.0]
  def change
    create_table :names do |t|
      t.string :saucer
      t.string :name, null: false
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
