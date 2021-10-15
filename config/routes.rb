Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get "/products" => "products#index"
get "/first_product" => "products#first_product"
get "/any_product/:wildcard" => "products#any_product"
get "/one_product" => "products#one_product"
end
