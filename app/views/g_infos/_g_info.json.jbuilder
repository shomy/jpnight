json.extract! g_info, :id, :user_id, :name, :age, :sex, :created_at, :updated_at
json.url g_info_url(g_info, format: :json)
