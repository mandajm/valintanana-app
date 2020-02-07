class ProjetController < ApplicationController
  def index
    @projet = Projet.new
    @categorie = Categorie.all
  end

  def new
    @jeuton = params[:jeutons].to_i / 1000

    @projets = Projet.new(
      users_id: params[:users_id],
      categories: params[:userRole],
      titre_du_projet: params[:titre_du_projet],
      jeutons: @jeuton,
      jours: params[:jours],
      localisation: params[:localisation],
      description: params[:slogan]
    )
    if @projets
      @projets.save
      redirect_to root_path, success: "Votre projet a bien été envoyer, veuiller patienter pendant l'analyse"
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  def show
  end
end
