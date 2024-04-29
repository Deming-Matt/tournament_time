require 'rails_helper'

RSpec.describe User, type: :model do 

    describe "validations" do 
        it { should validate_presence_of(:name) }
        it { should validate_presence_of(:email) }
        it { should validate_uniqueness_of(:email).case_insensitive }
    end 

    describe "relationships" do 
        it {should have_many(:teams)}
    end 
end 