class Team < ApplicationRecord
    validates :name, presence: true 
    validates :captain, presence: true 
    validates :number_of_players, presence: true 

    belongs_to :tournament 
    has_many :users
end
