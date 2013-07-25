json.array!(@machine_businesses) do |machine_business|
  json.extract! machine_business, :ip, :type, :business, :domain
  json.url machine_business_url(machine_business, format: :json)
end
