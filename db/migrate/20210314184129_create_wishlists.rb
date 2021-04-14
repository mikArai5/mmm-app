class CreateWishlists < ActiveRecord::Migration[6.0]
  def change
    create_table :wishlists do |t|
      t.string     :name,       null: false
      t.integer    :price,      null: false
      t.text       :memo
      t.references :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
