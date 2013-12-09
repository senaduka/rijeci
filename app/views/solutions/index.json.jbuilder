json.array!(@solutions) do |solution|
  json.extract! solution, :number, :time, :username
  json.url solution_url(solution, format: :json)
end
