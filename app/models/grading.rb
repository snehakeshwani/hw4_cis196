class Grading < ActiveRecord::Base
  belongs_to :task
  attr_accessible :percent, :importance, :finalgrade, :task_id
end
