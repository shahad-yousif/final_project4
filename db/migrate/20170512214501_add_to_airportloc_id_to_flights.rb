class AddToAirportlocIdToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :to_airportloc_id, :integer
  end
end
