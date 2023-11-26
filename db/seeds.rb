PROJECT_COUNT = 30
TASKS_PER_PROJECT_COUNT = 20

PROJECT_COUNT.times.each do |project_index|
  project = Project.create!(name: "Project #{project_index}")

  TASKS_PER_PROJECT_COUNT.times.each do |task_index|
    project.tasks.create!(title: "Task #{task_index}")
  end
end
