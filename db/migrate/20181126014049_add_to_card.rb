class AddToCard < ActiveRecord::Migration[5.2]
  def change
        add_column :card_data, :rarity, :text
        add_column :card_data, :power, :integer
        add_column :card_data, :toughness, :string
        add_column :card_data, :imageUr, :string
  end
end
