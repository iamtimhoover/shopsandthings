class Location < ActiveRecord::Base
	belongs_to :shop, dependent: :destroy,

	geocoded_by :address
	reverse_geocoded_by :latitude, :longitude
	after_validation :geocode, :reverse_geocode, :if => :address_changed?
end
