class AllController < ApplicationController


skip_before_action :verify_authenticity_token


  def getDetails
    @detail_id = []


    @detail = Projet.find_by id: params[:ShowId]

    puts @detail.id

    @detail_id = {
        'id' => @detail.id,
        'titre' => @detail.titre_du_projet,
        'localisation' => @detail.localisation,
        'jeuton' => @detail.jeutons,
        'joursRestant' => @detail.j_restant,
        'categorie' => @detail.categories,
        'image' => @detail.image,
        'user' => @detail.user_id
      }

      puts @detail_id

    render json: @detail_id

  end

    def show

    	

    end

  def index

    puts "#"*100

=begin    @count = 0
    @param = params[:search]
      if !@param.blank?
        @i = Projet.find_by_sql("SELECT * FROM Projets WHERE titre_du_projet LIKE '%#{@param}%'")
        for i in @i
          @count += 1
        end
      else

      end
=end
  end

  def getValueForSearch
    valueForSearch(params[:id])

  end


  def getValueForLocalisation
    valueLocalisation(params[:id])

  end



  def chearch
    @count = 0
    @province = params.require(:projet).permit(:localisation)

    if !@province.blank?
      @k = Projet.find_by_sql("SELECT * FROM Projets WHERE localisation LIKE '%#{@province['localisation'].capitalize}%'")
      for i in @k
        puts i
        @count += 1
      end
puts "*"*100
      puts @count
    else

    end

  end







end
