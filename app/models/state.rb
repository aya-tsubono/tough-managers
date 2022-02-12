class State < ActiveHash::Base
  self.data = [
    { id: 1, name: '相談のみ' },
    { id: 2, name: '面談済' },
    { id: 3, name: '見学中' },
    { id: 4, name: '入居申込' },
    { id: 5, name: '入居決定' },
    { id: 6, name: '保留' },
    { id: 7, name: '失注' }
  ]

  include ActiveHash::Associations
  has_many :cases
end
