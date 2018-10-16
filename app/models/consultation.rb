class Consultation < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :college, presence: true
  validates :major, presence: true
  validates :school_year, presence: true
  validates :graduation, presence: true
  validates :target, presence: true
  validates :content, presence: true
end
