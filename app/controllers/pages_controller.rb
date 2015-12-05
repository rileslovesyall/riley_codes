class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:secret]

  def index
    render :layout => "front-page"
  end
  def about
  end
  def projects
  end
end
