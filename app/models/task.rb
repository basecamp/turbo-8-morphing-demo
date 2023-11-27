class Task < ApplicationRecord
  belongs_to :project

  scope :completed, -> { where(completed: true) }
  scope :pending, -> { where(completed: false) }

  validates :title, presence: true

  after_update_commit :broadcast_update_later

  private
    def broadcast_update_later
      broadcast_render_later_to project, partial: "tasks/update", locals: { task: self, project: project }
    end
end
