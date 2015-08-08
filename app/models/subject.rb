class Subject < ActiveRecord::Base
	has_many :teaches
	has_many :teachers, through: :teaches
	has_many :studies
	has_many :students, through: :studies
end
