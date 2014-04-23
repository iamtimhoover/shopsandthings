class Product < ActiveRecord::Base

	belongs_to :shop	
	
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	do_not_validate_attachment_file_type :image
	
	validates :image, presence: true

	def previous
  	Product.where(["id < ?", id]).last
	end

	def next
  	Product.where(["id > ?", id]).first
	end
end
