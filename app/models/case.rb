class Case < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :state
  belongs_to :introducer
  belongs_to :household
  belongs_to :place
  belongs_to :economic_status

  validates :state_id, presence: true, numericality: { only_integer: true }
  validates :introducer_id, presence: true, numericality: { only_integer: true }
  validates :household_id, presence: true, numericality: { only_integer: true }
  validates :place_id, presence: true, numericality: { only_integer: true }
  validates :econimic_status_id, presence: true, numericality: { only_integer: true }

end
