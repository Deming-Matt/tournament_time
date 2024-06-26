require 'rails_helper'

RSpec.describe "teams/index", type: :view do
  before(:each) do
    assign(:teams, [
      Team.create!(
        name: "Name",
        captain: "Captain",
        number_of_players: 2
      ),
      Team.create!(
        name: "Name",
        captain: "Captain",
        number_of_players: 2
      )
    ])
  end

  it "renders a list of teams" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Captain".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
