class BlogController < ApplicationController

  def index
    @article = Post.all.order([:date]).reverse
  end

end
