json.array!(@stroops) do |stroop|
  json.extract! stroop, :id, :task_id, :duration, :before_stimulation, :total_items, :correct_items
  json.url stroop_url(stroop, format: :json)
end
