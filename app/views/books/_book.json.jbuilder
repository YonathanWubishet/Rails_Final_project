json.extract! book, :id, :title, :author, :genre, :publisher, :published_on, :price, :isbn, :created_at, :updated_at
json.url book_url(book, format: :json)
