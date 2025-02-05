class HomeController < ApplicationController
  def menu
    @products = Product.limit(10)
  end
end
