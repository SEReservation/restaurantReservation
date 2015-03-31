json.array!(@logins) do |login|
  json.extract! login, :id, :user, :pass, :type_user
  json.url login_url(login, format: :json)
end
