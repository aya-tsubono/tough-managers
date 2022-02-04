class Case < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :state

  validates :state_id, presence: true, numericality: { only_integer: true }

end
