class Place < ActiveHash::Base
  self.data = [
    { id: 1, name: '自宅' },
    { id: 2, name: '病院' },
    { id: 3, name: '介護施設' },
    { id: 3, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :cases
end