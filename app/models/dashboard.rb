class Dashboard < ApplicationRecord
  has_many :goals
  has_many :tasks, through: :goals
end
