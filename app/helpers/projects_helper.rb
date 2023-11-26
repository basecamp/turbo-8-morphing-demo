module ProjectsHelper
  def project_progress_bar_for(project)
    tag.progress "#{project.completion_ratio * 100}%", value: project.tasks.completed.count, max: project.tasks.count, class: "progress is-primary"
  end
end
