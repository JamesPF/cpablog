class AboutController < ApplicationController

  def show
    @info = Bio.last
  end

end
