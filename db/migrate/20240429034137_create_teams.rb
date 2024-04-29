class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :captain
      t.integer :number_of_players

      t.timestamps
    end
  end
end
