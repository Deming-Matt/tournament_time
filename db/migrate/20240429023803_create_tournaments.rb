class CreateTournaments < ActiveRecord::Migration[7.0]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :host
      t.string :location
      t.integer :number_of_teams

      t.timestamps
    end
  end
end
