class CreatePetitems < ActiveRecord::Migration[6.0]
  def change
    create_table :petitems do |t|
      t.integer :pet_id
      t.integer :item_id
    end
  end
end
