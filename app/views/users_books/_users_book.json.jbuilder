json.extract! users_book, :id, :user_id, :book_id, :created_at, :updated_at
json.url users_book_url(users_book, format: :json)
