class Task < ApplicationRecord
  belongs_to :project

  scope :completed, -> { where(completed: true) }
  scope :pending, -> { where(completed: false) }

  validates :title, presence: true
end
