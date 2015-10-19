class Pin < ActiveRecord::Base
  validates :title, :image, :url,  presence: true  
  validate :comment
end
