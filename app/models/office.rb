class Office < ActiveRecord::Base

	attr_accessible :name
	
	has_many :users
	
	DEFAULT_VALUES = {name: "Valor por defecto"}

end
