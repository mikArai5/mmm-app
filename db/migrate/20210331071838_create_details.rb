class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.string     :item_name,                  null: false
      t.text       :memo
      t.integer    :incomes_or_expenses_id,     null: false
      t.integer    :category_id,                null: false
      t.datetime   :day,                        null: false
      t.integer    :price,                      null: false
      t.integer    :payment_methods_id,         null: false
      t.integer    :number_of_time_id,          null: false
      t.references :user,                       null: false, foreign_key: true
      t.datetime   :start_time
      t.timestamps
    end
  end
end
