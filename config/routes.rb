Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/album" => "album#index"
    post "/album" => "album#create"
    get "/album:id" => "album#show"
    patch "/album:id" => "album#update"
    delete "/album:id" => "album#destroy"
  end
end
