class Airport < ActiveRecord::Base
    
        
        
        geocoded_by :address
        reverse_geocoded_by :latitude, :longitude

        after_validation :geocode, :reverse_geocode  #:if => :address_changed? 
        
        has_many :flights, class_name: "Flight", foreign_key: "to_airport"
        has_many :flights, class_name: "Flight", foreign_key: "from_airport"
       
        
         def full_airport_name
        "#{address} #{code}"
         end
end
