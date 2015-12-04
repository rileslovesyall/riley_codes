class PostsController < ApplicationController
before_action :require_login, only :new, :edit, :update, :destroy

end
