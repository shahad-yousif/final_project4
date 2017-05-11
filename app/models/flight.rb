class Flight < ActiveRecord::Base
     belongs_to :from_airport, class_name: Airport, foreign_key: "to_airport"
     belongs_to :to_airport, class_name: Airport, foreign_key: "from_airport"
     belongs_to :company
     
     belongs_to :user
     
      def full_airport_name
        "#{address} #{code}"
      end
end
