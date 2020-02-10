class Suivi < ApplicationRecord
	has_one :user

	has_many :projets, through: :users
end
