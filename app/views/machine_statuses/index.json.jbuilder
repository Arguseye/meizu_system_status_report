json.array!(@machine_statuses) do |machine_status|
  json.extract! machine_status, :ip, :cpu_usage, :disk_io_rate, :load, :tcp_connection
  json.url machine_status_url(machine_status, format: :json)
end
