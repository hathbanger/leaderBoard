json.array!(@runs) do |run|
  json.extract! run, :id, :score, :athlete_id, :event_id
  json.url run_url(run, format: :json)
end
