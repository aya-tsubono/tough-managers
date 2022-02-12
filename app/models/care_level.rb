class CareLevel < ActiveHash::Base
  self.data = [
    { id: 1, name: '要介護5' },
    { id: 2, name: '要介護4' },
    { id: 3, name: '要介護3' },
    { id: 4, name: '要介護2' },
    { id: 5, name: '要介護1' },
    { id: 6, name: '要支援2' },
    { id: 7, name: '要支援1' },
    { id: 8, name: '申請中' },
    { id: 9, name: '不明・その他' }
  ]

  include ActiveHash::Associations
  has_many :cases
end
