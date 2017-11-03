json.extract! loginuser, :id, :username, :userid, :userpw, :created_at, :updated_at
json.url loginuser_url(loginuser, format: :json)
