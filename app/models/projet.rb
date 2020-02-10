class Projet < ApplicationRecord


      belongs_to :user

      validates :titre_du_projet, presence: true

      validates :description, presence: true, length: { maximum: 1000}

      validates :jeutons, presence: true, numericality: { only_integer: true }

      validates :jours, presence: true, numericality: { only_integer: true }

      validates :financement, presence: true, numericality: { only_integer: true }

      validates :categories, presence: true

      validates :image , presence: true

      validates :localisation , presence: true

      validates :statusAdmin, presence: true

      validates :odd, presence: true
end
