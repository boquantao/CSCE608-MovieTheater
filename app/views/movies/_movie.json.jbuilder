json.extract! movie, :id, :name, :type, :released_date, :leading_role, :created_at, :updated_at
json.url movie_url(movie, format: :json)
