class BlogController < ApplicationController

  skip_before_filter :authorize

  def index
    @article = Post.all.order([:date]).reverse
  end

end
