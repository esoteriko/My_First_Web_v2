class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :group
      t.integer :count_number
      t.string :user_name
      t.string :password
      t.string :password_2

      t.timestamps
    end
  end
end
