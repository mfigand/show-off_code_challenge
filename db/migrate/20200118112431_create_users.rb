class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, null: false, index: true
      t.string :last_name, null: false, index: true
      t.string :password, null: false, index: true
      t.string :email, null: false, unique: true, index: true
      t.string :image_url, index: true

      t.timestamps
    end

    add_index :users, :created_at
    add_index :users, :updated_at
  end
end
