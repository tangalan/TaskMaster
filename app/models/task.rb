class Task < ActiveRecord::Base
  validates :Description, presence: true
  
  validates :Category, presence: true
  
  validates :Reward, presence: true, numericality: true
  
  belongs_to :user
end
