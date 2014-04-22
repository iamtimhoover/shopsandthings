class Shop < ActiveRecord::Base
	has_many :locations

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
	
	validates :image, presence: true


	def previous
  	Shop.where(["id < ?", id]).last
	end

	def next
  	Shop.where(["id > ?", id]).first
	end

end
