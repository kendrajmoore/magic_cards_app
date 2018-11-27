class AddPicToCardData < ActiveRecord::Migration[5.2]
  def change
    add_column :card_data, :imageUrl, :string
  end
end
