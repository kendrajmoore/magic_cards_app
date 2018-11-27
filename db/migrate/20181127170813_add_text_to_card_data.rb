class AddTextToCardData < ActiveRecord::Migration[5.2]
  def change
    add_column :card_data, :text, :string
  end
end
