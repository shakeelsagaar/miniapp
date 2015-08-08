class Teacher < ActiveRecord::Base
	has_many :teaches
	has_many :subjects, through: :teaches
end
