require 'rspec'
require_relative 'score_card_reader.rb'
require_relative 'course_par.rb'
require_relative 'scorecard.rb'

describe 'ScoreCardReader' do 
	let(:scorecard) { ScoreCard.new('tiger_woods.csv').scores_for_player }
	let(:course_par) { CoursePar.new('test_pars.csv').load_the_course }
	let(:reader) { ScoreCardReader.new(scorecard, course_par) }

# 	As a tournament official
# I want to see the score term for each hole score for each player
# So that I can report on what each golf scored on each hole

	it 'displays the total score and name of the player' do 
		result = reader.display_player_name
		expect(result).to eql("Tiger Woods")
	end

	it 'displays the score name for a hole' do 
		result = reader.name_of_hole_score(7, 5)
		expect(result).to eql('double-bogey')
	end
end