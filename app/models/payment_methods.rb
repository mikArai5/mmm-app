class PaymentMethods < ActiveHash::Base
  self.data = [
    { id: 1, name: '__' },
    { id: 2, name: '現金'},
    { id: 3, name: 'カード'}
  ]

  include ActiveHash::Associations
  has_many :details
  
end