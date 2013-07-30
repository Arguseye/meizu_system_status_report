json.array!(@client_errors) do |client_error|
  json.extract! client_error, :business, :errors, :time, :detail
  json.url client_error_url(client_error, format: :json)
end
