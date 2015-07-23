class Task < ActiveRecord::Base
  
  geocoded_by :address   # can also be an IP address
  after_validation :geocode           # auto-fetch coordinates

  validates :Description, presence: true
  
  validates :Category, presence: true
  
  validates :Reward, presence: true, numericality: true
  
  belongs_to :user
end
