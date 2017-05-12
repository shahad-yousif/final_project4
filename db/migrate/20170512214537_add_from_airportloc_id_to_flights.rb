class AddFromAirportlocIdToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :from_airportloc_id, :integer
  end
end
