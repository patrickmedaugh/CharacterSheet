class AddCharacterRefToItemsAndPowers < ActiveRecord::Migration
  def change
    add_reference :items, :character, index: true, foreign_key: true
    add_reference :powers, :character, index: true, foreign_key: true
  end
end
