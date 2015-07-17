class Task < ActiveRecord::Base
  validates :Description, presence: true
  
  validates :Category, presence: true
  
  validates :Reward, presence: true, numericality: true
  
  validates :Email, presence: true
  
  
end
