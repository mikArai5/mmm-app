FactoryBot.define do
  factory :detail do
    item_name                         {'namae'}
    incomes_or_expenses_id            { 2 }
    category_id                       { 2 }
    day                               { '2021/04/01' }
    price                             { 3000 }
    payment_methods_id                { 2 }
    number_of_time_id                 { 2 }
    association :user
  end
end