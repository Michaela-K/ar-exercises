class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true
  validates :store, absence: false
  validates_associated :store
  
  validate :hourly_rate, :range

  def range
    wage = hourly_rate.to_i
    errors.add(:hourly_rate, 'Must be between 40 and 200') unless wage >= 40 && wage <= 200
  end
end
