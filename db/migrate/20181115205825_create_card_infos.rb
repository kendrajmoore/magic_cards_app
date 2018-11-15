class CreateCardInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :card_infos do |t|
      t.integer :user_id
      t.string :name
      t.integer :manaCost
      t.string :layout
      t.string :colors
      t.string :supertypes

      t.timestamps
    end
    add_index :card_infos, :user_id
  end
end
