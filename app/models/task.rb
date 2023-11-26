class Task < ApplicationRecord
  belongs_to :project

  scope :completed, -> { where(completed: true) }
end
