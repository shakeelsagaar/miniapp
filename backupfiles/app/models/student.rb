class Student < ActiveRecord::Base
	has_many :studies
	has_many :subjects, through: :studies
	has_many :attendances
	
end
