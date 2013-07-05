require 'csv'
require 'pry'

class CoursePar

	def initialize(file)
		@file = file
		@pars
	end

	def load_the_course
		CSV.foreach(@file) do |row|
			@pars = row
		end

		@pars
	end

	def load_total_par_score
		map(&:to_i).inject(:+)
	end

end
