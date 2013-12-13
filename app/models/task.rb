class Task < ActiveRecord::Base
	validates :work, presence: true
	validates :course, presence: true
	validates :email, presence: true
	validates :course, length: {within: 5..7}
	formatValidation = /[a-z-]+[\d]+/i
	emailFormatValidation = /[a-z.-]+@[a-z \d .-]+.[a-z]+/i
  validates :course, format: {with: formatValidation}
  validates :email, format: {with: emailFormatValidation}
end
