json.extract! report, :id, :event, :username, :description, :created_at, :updated_at
json.url report_url(report, format: :json)
