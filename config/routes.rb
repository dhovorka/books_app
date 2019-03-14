Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/books" => "books#index"
    post "/books" => "books#create"
    get "/books/:id" => "books#show"
    patch "/books/:id" => "books#update"

    post "/users" => "users#create"

    delete "/books/:id" => "books#destroy"

  end 

end
