json.extract! task, :id, :name, :desc, :created_at, :updated_at
json.url task_url(task, format: :json)
