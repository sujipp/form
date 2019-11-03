json.extract! event, :id, :title, :categrory, :description, :location, :start, :end, :phone, :created_at, :updated_at
json.url event_url(event, format: :json)
