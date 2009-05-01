class BlogsController < ApplicationController
  def index
    @blogs = Blog.all   #Short für Blog.find :all
  end
end
