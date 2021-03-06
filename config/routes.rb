Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/album" => "album#index"
    post "/album" => "album#create"
    get "/album" => "album#show"
    patch "/album" => "album#update"
    delete "/ablum" => "album#destroy"
  end
end
