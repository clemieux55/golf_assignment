require 'rspec'
require_relative '../scorecard.rb'


describe 'ScoreCard' do 

# As a tournament official
# I want to see the score term for each hole score for each player
# So that I can report on what each golf scored on each hole

	it 'loads the data of each player' do 
		scorecard = ScoreCard.new('tiger_woods.csv')
		player_scores = scorecard.scores_for_player
		expect(player_scores).to be_kind_of(Array)
		expect(player_scores.length).to eql(19)
	end
end