class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy

  def completion_ratio
    if tasks.any?
      tasks.completed.count.to_f / tasks.count
    else
      0
    end
  end
end
