json.array! @books.each do |book|
  json.partial! "books.json.jbuilder", book: book
end