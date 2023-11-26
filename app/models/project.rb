class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates :name, presence: true

  def completed?
    tasks.pending.none?
  end

  def completion_ratio
    if tasks.any?
      tasks.completed.count.to_f / tasks.count
    else
      0
    end
  end
end
