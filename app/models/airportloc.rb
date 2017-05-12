class Airportloc < ActiveRecord::Base
    
    has_many :flights, class_name: "Flight", foreign_key: "to_airportloc_id"
    has_many :flights, class_name: "Flight", foreign_key: "from_airportloc_id"
        geocoded_by :address
        reverse_geocoded_by :latitude, :longitude
        after_validation :geocode, :reverse_geocode  #:if => :address_changed?
        
        
end
