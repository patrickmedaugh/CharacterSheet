class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.string :race
      t.string :character_class

      t.timestamps null: false
    end
  end
end
