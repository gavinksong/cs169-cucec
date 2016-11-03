json.extract! conversation, :id, :student_id, :mentor_id, :created_at, :updated_at
json.url conversation_url(conversation, format: :json)