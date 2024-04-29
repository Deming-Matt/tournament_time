require "rails_helper"

RSpec.describe Tournament, type: :model do 

    describe "validations" do 
        it { should validate_presence_of(:name) }
        it { should validate_presence_of(:host) }
        it { should validate_presence_of(:location) }
        it { should validate_presence_of(:number_of_teams) }
    end 

    describe "relationships" do 
        it { should have_many(:teams)}
    end     

end 
  