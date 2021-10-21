class SuppliersController < ApplicationController

  def index
    supplier = Supplier.all
    render json: supplier
  end

  def show
    supplier_id = params[:id]
    supplier = Supplier.find_by(id: supplier_id)
    render json: supplier
  end 

  def create
    supplier = Supplier.new(
      name: params["name"]
      email: params["email"]
      phone_number: params["phone_number"]
    )
  end 
end
