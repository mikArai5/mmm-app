class IncomesOrExpenses < ActiveHash::Base
  self.data = [
    { id: 1, name: '__' },
    { id: 2, name: '収入' },
    { id: 3, name: '支出' }
  ]

  include ActiveHash::Associations
  has_many :details

end