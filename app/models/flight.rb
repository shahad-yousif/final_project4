class Flight < ActiveRecord::Base
     belongs_to :from_airport, class_name: Airport, foreign_key: "to_airport_id"
     belongs_to :to_airport, class_name: Airport, foreign_key: "from_airport_id"
     belongs_to :from_airportloc, class_name: Airportloc, foreign_key: "to_airportloc_id"
     belongs_to :to_airportloc, class_name: Airportloc, foreign_key: "from_airportloc_id"
     belongs_to :company
     
     belongs_to :user
     
     
end
