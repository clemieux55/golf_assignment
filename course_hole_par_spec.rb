require 'rspec'
require_relative 'course_par.rb'

describe 'CoursePar' do 

# User Stories
# As a tournament official
# I want to supply a file that contains my course information
# So that it can help with tabulating scores

	it 'loads a csv file and returns an array' do 
		course_par = CoursePar.new('test_pars.csv').load_the_course
		expect(course_par).to be_kind_of(Array)
		expect(course_par.length).to be(18)
	end
end