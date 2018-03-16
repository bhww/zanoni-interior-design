class WelcomeController < ApplicationController
  def index
    @galleries = Gallery.order("sort_order ASC")
  end
end
