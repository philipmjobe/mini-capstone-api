class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index 
    if params[:category]
      category = Category.find_by(name: params[:category])
      products = category.products
    else  
      products = Product.all
    end
    render json: product 
  end 

  def show 
    product = Product.find_by(id: params[:id])
    render json: product
  end 

  def create 
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id]
    )
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: 406
    end
  end 

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name 
    product.price = params[:price] || product.price
    product.description == params[:description] || product.description

    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: 406
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy 
    render json: {message: "Sucessfully destroyed!"}
  end 
end
