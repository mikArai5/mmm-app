class NumberOfTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '__'},
    { id: 2, name: '1'},
    { id: 3, name: '2'},
    { id: 4, name: '3'},
    { id: 5, name: '5'},
    { id: 6, name: '6'},
    { id: 7, name: '10'},
    { id: 8, name: '12'},
    { id: 9, name: '15'},
    { id: 10, name: '18'},
    { id: 11, name: '20'},
    { id: 12, name: '24'},
    { id: 13, name: '30'},
    { id: 14, name: '36'},
    { id: 15, name: 'ボーナス1回'},
    { id: 16, name: 'ボーナス2回'},

  ]
  include ActiveHash::Associations
  has_many :details

end