class Case < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :state_id

end
