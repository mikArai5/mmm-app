class Detail < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :incomes_or_expenses
  belongs_to :category
  belongs_to :payment_methods
  belongs_to :number_of_time
  has_one :user
  
  with_options presence: true do
    validates :incomes_or_expenses_id
    validates :category_id
    validates :payment_methods_id
    validates :number_of_time_id

    with_options numericality: { other_than: 1 , message: 'Select'} do
      validates :incomes_or_expenses_id
      validates :category_id
      validates :payment_methods_id
      validates :number_of_time_id
    end
  end
end
