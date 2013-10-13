class Task < ActiveRecord::Base
	validates :work, presence: true
	validates :course, presence: true
	validates :course, length: {within: 5..7}
	formatValidation = /[a-z-]+[\d]+/i
  validates :course, format: {with: formatValidation}
end
