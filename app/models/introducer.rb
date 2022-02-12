class Introducer < ActiveHash::Base
  self.data = [
    { id: 1, name: 'なし' },
    { id: 2, name: '介護' },
    { id: 3, name: '病院' },
    { id: 4, name: '公的機関' },
    { id: 5, name: '介護施設' },
    { id: 6, name: '他' }
  ]

  include ActiveHash::Associations
  has_many :cases
end
