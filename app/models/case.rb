class Case < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :case_name, presence: true


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :state
  belongs_to :introducer
  belongs_to :household
  belongs_to :place
  belongs_to :economic_status
  belongs_to :care_level

  validates :state_id, presence: true, numericality: { only_integer: true }
  validates :introducer_id, presence: true, numericality: { only_integer: true }
  validates :household_id, presence: true, numericality: { only_integer: true }
  validates :place_id, presence: true, numericality: { only_integer: true }
  validates :econimic_status_id, presence: true, numericality: { only_integer: true }
  validates :care_level_id, presence: true, numericality: { only_integer: true }

end
