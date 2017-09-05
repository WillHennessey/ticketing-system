class Ticket < ActiveRecord::Base
  MAX_TYPE_LENGTH = 20
  MAX_ABSTRACT_LENGTH = 255
  MAX_DETAILS_LENGTH = 65535
  TYPES = %w(defect issue request story)

  validates :abstract, presence: true, length: { minimum: 10, maximum: MAX_ABSTRACT_LENGTH }
  validates :details, presence: true, length: { minimum: 10, maximum: MAX_DETAILS_LENGTH }
  validates :type, presence: true, length: { minimum: 3, maximum: MAX_TYPE_LENGTH }, inclusion: { in: TYPES }
  validates :priority, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  after_create :set_default_priority

  def description
    "This is a #{type.downcase} ticket."
  end
end