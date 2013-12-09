json.array!(@guesses) do |guess|
  json.extract! guess, :username, :definition
  json.url guess_url(guess, format: :json)
end
