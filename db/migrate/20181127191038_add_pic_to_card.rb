class AddPicToCard < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :imageUrl, :string
  end
end
