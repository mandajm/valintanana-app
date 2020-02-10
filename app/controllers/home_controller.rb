class HomeController < ApplicationController
  def index
  	@projet = Projet.all
  end
end
