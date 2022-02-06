class Household < ActiveHash::Base
  self.data = [
    { id: 1, name: '単身' },
    { id: 2, name: '同居世帯' },
    { id: 3, name: '不明' },
  ]

  include ActiveHash::Associations
  has_many :cases
end