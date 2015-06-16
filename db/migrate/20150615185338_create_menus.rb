class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.text :descrition
      t.integer :user_id
      t.date :valid_date

      t.timestamps
    end
  end
end
