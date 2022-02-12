class Case < ApplicationRecord
  belongs_to :user

  validates :date,      presence: true
  validates :introducer_name,           length: { maximum: 50 }
  validates :case_name, presence: true, length: { maximum: 50 }
  validates :age,                       length: { maximum: 50 }
  validates :address,                   length: { maximum: 50 }
  validates :handicap_level,            length: { maximum: 500 }
  validates :medical_condition,         length: { maximum: 500 }
  validates :care_condition,            length: { maximum: 500 }
  validates :cost,                      length: { maximum: 500 }
  validates :location,                  length: { maximum: 500 }
  validates :remarks,                   length: { maximum: 500 }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :state
  belongs_to :introducer
  belongs_to :household
  belongs_to :place
  belongs_to :economic_status
  belongs_to :care_level

  validates :state_id,           presence: true, numericality: { only_integer: true }
  validates :introducer_id,      presence: true, numericality: { only_integer: true }
  validates :household_id,       presence: true, numericality: { only_integer: true }
  validates :place_id,           presence: true, numericality: { only_integer: true }
  validates :economic_status_id, presence: true, numericality: { only_integer: true }
  validates :care_level_id,      presence: true, numericality: { only_integer: true }

end
