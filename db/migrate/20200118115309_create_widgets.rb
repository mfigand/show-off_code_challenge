class CreateWidgets < ActiveRecord::Migration[5.2]
  def change
    create_table :widgets do |t|
      t.string :name, null: false, index: true
      t.string :description, null: false, index: true
      t.string :kind, null: false, index: true

      t.timestamps
    end

    add_index :widgets, :created_at
    add_index :widgets, :updated_at
  end
end
