class SiteController < ApplicationController
  def index
    @landlords = User.all
  end
end
