PROJECT_COUNT = 30
TASKS_PER_PROJECT_COUNT = 20

PROJECT_COUNT.times.each do |project_id|
  project = Project.create!(name: "Project #{project_id}")

  TASKS_PER_PROJECT_COUNT.times.each do |task_id|
    project.tasks.create!(title: "Task #{task_id}")
  end
end
