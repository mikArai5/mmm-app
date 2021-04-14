class Detail < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :incomes_or_expenses
  belongs_to :category
  belongs_to :payment_methods
  belongs_to :number_of_time
  belongs_to :user
  
    validates :price,               numericality: {with: /\A[0-9]+\z/, message: 'Half-width number'}

  with_options presence: true do
    validates :price
    validates :item_name
    validates :day

    with_options numericality: { other_than: 1 , message: 'Select'} do
      validates :incomes_or_expenses_id
      validates :category_id
      validates :payment_methods_id
      validates :number_of_time_id
    end

  end
  
  def start_time
    self.day
  end
end
