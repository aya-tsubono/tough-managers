class EconomicStatus < ActiveHash::Base
  self.data = [
    { id: 1, name: '年金' },
    { id: 2, name: '年金＋預貯金' },
    { id: 3, name: '生活保護' },
    { id: 4, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :cases
end