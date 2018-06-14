class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :menu_item
      t.string :description
      t.float :price

      t.timestamps
    end
  end
end
