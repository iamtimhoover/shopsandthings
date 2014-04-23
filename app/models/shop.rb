class Shop < ActiveRecord::Base
	has_many :locations
	has_many :products

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	do_not_validate_attachment_file_type :image
	
	validates :image, presence: true


	def previous
  	Shop.where(["id < ?", id]).last
	end

	def next
  	Shop.where(["id > ?", id]).first
	end

end
