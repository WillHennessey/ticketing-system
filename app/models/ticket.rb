class Ticket < ActiveRecord::Base
  MAX_ABSTRACT_LENGTH = 255
  MAX_DETAILS_LENGTH = 65535
  
  validates :abstract, presence: true, length: { minimum: 10, maximum: MAX_ABSTRACT_LENGTH }
  validates :details, presence: true, length: { minimum: 10, maximum: MAX_DETAILS_LENGTH }
  validates :priority, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
  after_create :set_default_priority
end
