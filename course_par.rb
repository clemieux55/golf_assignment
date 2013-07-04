require 'csv'
class CoursePar

	def initialize(file)
		@file = file
	end

	def load_the_course
		CSV.foreach(@file) do |row|
			@pars = row
		end

		@pars
	end

end
