class CreateCardData < ActiveRecord::Migration[5.2]
  def change
    create_table :card_data do |t|
      t.integer :user_id
      t.string :name
      t.integer :manaCost
      t.string :layout
      t.string :colors
      t.string :rarity
      t.string :text
      t.string :power
      t.string :toughness
      t.string :imageUrl

      t.timestamps
    end
    add_index :card_data, :user_id
  end
end
