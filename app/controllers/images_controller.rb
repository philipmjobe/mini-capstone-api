class ImagesController < ApplicationController
  def index 
    image = Image.all 
    render json: image 
  end 

  def show 
    image_id = params[:id]
    image = Image.find_by(id: image_id)
    render json: image 
  end 

  def create 
    image = Image.new(
      url: params["url"],
      product_id: params["product_id"]
    )
    if image.save
      render json: image
    else
      render json: {errors: image.errors.full_messages}, status: 406
    end
  end 

  def update
    image_id = params["id"].to_i
    image = Image.find_by id: image_id

    image.url = params["url"] || image.url
    image.product_id = params["product_id"] || product.product_id
    

    if image.save
      render json: image
    else
      render json: {errors: image.errors.full_messages}, status: 406
    end
  end

  def destroy
    image_id = params["id"].to_i
    image = Image.find_by id: image_id 

    product.destroy
    render json: {message: "Sucessfully destroyed!"}
  end 
end
