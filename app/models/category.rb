class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '__' },
    { id: 2, name: '食費'},
    { id: 3, name: '日用品'},
    { id: 4, name: '美容・衣料品'},
    { id: 5, name: '教養'},
    { id: 6, name: '交際費'},
    { id: 7, name: '医療費'},
    { id: 8, name: '通信費'},
    { id: 9, name: '水道・光熱費'},
    { id: 10, name: '家関係'},
    { id: 11, name: '税金'},
    { id: 12, name: '趣味'},
    { id: 13, name: '大きな出費'},
    { id: 14, name: 'その他'}
  ]
  
  include ActiveHash::Associations
  has_many :details

end