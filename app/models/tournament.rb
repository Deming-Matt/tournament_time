class Tournament < ApplicationRecord
    validates :name, presence: true 
    validates :host, presence: true
    validates :location, presence: true
    validates :number_of_teams, presence: true 
    
end
