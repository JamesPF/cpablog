class AboutController < ApplicationController

  skip_before_filter :authorize

  def show
    @info = Bio.last
  end

end
