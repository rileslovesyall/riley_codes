class PagesController < ApplicationController

  def index
    render :layout => "front-page"
  end
  def about
  end
  def projects
  end
  def haml_about
    render :haml_about
  end
end
