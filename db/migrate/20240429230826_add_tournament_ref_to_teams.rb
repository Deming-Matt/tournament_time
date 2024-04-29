class AddTournamentRefToTeams < ActiveRecord::Migration[7.0]
  def change
    add_reference :teams, :tournament, null: false, foreign_key: true
  end
end
