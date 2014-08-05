class Store < ActiveRecord::Base
	self.per_page = 6
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
