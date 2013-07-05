require 'rspec'
require_relative 'course_par.rb'

describe 'CoursePar' do 

let(:course_par) { CoursePar.new('test_pars.csv').load_the_course }

# User Stories
# As a tournament official
# I want to supply a file that contains my course information
# So that it can help with tabulating scores

	it 'loads a csv file and returns an array' do 
		expect(course_par).to be_kind_of(Array)
		expect(course_par.length).to be(18)
	end		
end