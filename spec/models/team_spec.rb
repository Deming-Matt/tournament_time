require 'rails_helper'

RSpec.describe Team, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe "validations" do 
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:captain)}
    it { should validate_presence_of(:number_of_players)}
  end 

  describe "relationships" do 
    it { should have_many(:users)}
    it { should belong_to(:tournament)}
  end 

end
