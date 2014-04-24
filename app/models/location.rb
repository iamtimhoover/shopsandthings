class Location < ActiveRecord::Base
	belongs_to :shop	
	add :shop to attr_accessible

	geocoded_by :address
	reverse_geocoded_by :latitude, :longitude
	after_validation :geocode, :reverse_geocode, :if => :address_changed?
end
