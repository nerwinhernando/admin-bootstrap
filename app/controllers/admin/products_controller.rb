class Admin::ProductsController < ApplicationController
  layout "admin"

  def index
    # Add logic to list users
  end

  def show
    @product = Product.find(params[:id])
  end

  # Add other actions as needed
end
