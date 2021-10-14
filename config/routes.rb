Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get "/all_product" => "products#all_product"
get "/first_product" => "products#first_product"
get "/any_product/:wildcard" => "products#any_product"
end
