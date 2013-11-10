class PartList < ActiveRecord::Base
  belongs_to :task
  scope :incomplete,-> {where(complete: false).order(:title)}
  scope :high_priority, -> { where('priority = ?', "high")}
  scope :med_priority, -> { where('priority = ?', "medium")}
  scope :low_priority, -> { where('priority = ?', "low")}
  scope :other, -> { where('priority = ?', nil)}
end
