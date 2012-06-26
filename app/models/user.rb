require 'office'
class User < ActiveRecord::Base

	attr_accessible :name, :lastname, :office_id
	
	belongs_to :office
	
	before_create :associate_default_office
	
	private
		def associate_default_office
			office = Office.new(Office::DEFAULT_VALUES)
			office.save!
			self.office = office
		end

end
