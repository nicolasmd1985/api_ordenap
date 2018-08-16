Rails.application.routes.draw do
  namespace :api, defaults: {format: "json"} do
    namespace :v1 do
      resources :users
      resources :orders , controller: "orders"
    end
  end
end
