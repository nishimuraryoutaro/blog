class HomeController < ApplicationController
  def index
    @article = Article.first
  end

  def about
    render 'home/index'
  end
end