json.array!(@results) do |result|
  json.extract! result, :user_id, :time
  json.url result_url(result, format: :json)
end
