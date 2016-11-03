json.extract! message, :id, :body, :conversation_id, :mentor_id, :student_id, :read, :created_at, :updated_at
json.url message_url(message, format: :json)