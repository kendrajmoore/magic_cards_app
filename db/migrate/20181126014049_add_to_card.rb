class AddToCard < ActiveRecord::Migration[5.2]
  def change
        add_column :rarity, :text, :power, :toughness :imageUrl
  end
end
