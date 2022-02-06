class Case < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :state
  belongs_to :introducer
  belongs_to :household

  validates :state_id, presence: true, numericality: { only_integer: true }
  validates :introducer_id, presence: true, numericality: { only_integer: true }
  validates :household_id, presence: true, numericality: { only_integer: true }

end
