class CreateItemsMenusTable < ActiveRecord::Migration
  def up
    create_table :items_menus, :id => false do |t|
        t.references :item
        t.references :menu
    end
    add_index :items_menus, [:item_id, :menu_id]
    add_index :items_menus, :menu_id
  end

  def down
    drop_table :items_menus
  end
end
