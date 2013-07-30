json.array!(@machine_errors) do |machine_error|
  json.extract! machine_error, :machine_business_id, :pv, :error, :error_type, :on_date
  json.url machine_error_url(machine_error, format: :json)
end
