class WelcomeController < ApplicationController
  def index
    @galleries = Gallery.all
  end
end
