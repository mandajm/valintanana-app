class DetailsController < ApplicationController
  def show
  	@details = Projet.find(id = params[:id])
  	@details_users = User.find(id = @details.user_id)
  end
  def index
  end
  def new
  end
end
