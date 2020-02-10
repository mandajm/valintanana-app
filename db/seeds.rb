# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
odd = ['Pauvreté',' Zéro Faim ','Santé ',' Education','Eau et assainissement','Energie']
province = ['Analamanga','Bongolava ','Itasy','Vakinakaratra ',"Amoron’i Mania ",'Atsimo-Atsinanana']
list = ['Art & Photo','Artisanat ','Cuisine','Edition & journal','Film & Vidéo ','Musique & Dance ']
for i in 0 .. 5
    Projet.create(
      user_id: i,
      titre_du_projet: "Ny valitanana #{i}",
      description: "description de ny valitanana #{i}",
      jeutons: 1400 + i ,
      jours: 60 + i,
      odd: odd[i],
      financement: 0,
      image: '/logo/body/fond.jpg',
      categories: list[i],
      localisation: province[i],
      statusAdmin: true
    )
end