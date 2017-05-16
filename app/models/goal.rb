class Goal < ApplicationRecord
  belongs_to :dashboard
  has_many :tasks
  after_initialize :init

  def init
    self.completed = false if self.completed.nil?
    self.pointscurrent ||=0.0
    self.pointsgoal ||= 0.0
  end
end
