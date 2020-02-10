module AllHelper
	def valueLocalisation(data)
		@_val = data
	    @one_file = []
	    @_search = Projet.find_by_sql("SELECT * FROM Projets WHERE localisation LIKE '%#{@_val}%'")
	    for i in @_search
	      @_tab = {
	        'id' => i.id,
	        'titre_du_projet' => i.titre_du_projet,
	        'categorie' => i.categories,
	        'localisation' => i.localisation,
	        'jeutons' => i.jeutons,
	        'image' => i.image,
	        'jours' => i.jours
	      }
	      @one_file << @_tab
	    end
	      render json: @one_file

	end

	def valueForSearch(dataSearch)
		@_value = dataSearch
	    @file = []
	    @_search = Projet.find_by_sql("SELECT * FROM Projets WHERE categories LIKE '%#{@_value}%'")
	    for i in @_search
	      @_tab = {
	        'detail' => i.id,
	        'titre_du_projet' => i.titre_du_projet,
	        'categorie' => i.categories,
	        'localisation' => i.localisation,
	        'jeutons' => i.jeutons,
	        'image' => i.image,
	      }
	      @file << @_tab
	    end
	      render json: @file
	end
end
