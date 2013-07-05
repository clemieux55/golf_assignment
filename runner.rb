require_relative 'score_card_reader.rb'
require_relative 'course_par.rb'
require_relative 'scorecard.rb'

players = ['tiger_woods.csv', 'chris_lemieux.csv', 'bubba_sparks.csv']

players.each do |player|
	scorecard = ScoreCard.new(player).scores_for_player
	course_par = CoursePar.new('test_pars.csv').load_the_course
	reader = ScoreCardReader.new(scorecard, course_par)
	reader.display_scores
end