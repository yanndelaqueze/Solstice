class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home , :about]

  def home
  end

  def about
  end

  def admin
    @products = Product.all
    @categories = Category.all
  end
end
