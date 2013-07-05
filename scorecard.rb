require 'csv'
require 'pry'

class ScoreCard

	def initialize(player_score)
		@player_score = player_score
	end

	def scores_for_player
		CSV.foreach(@player_score) do |score|
			@score_card = score
		end

		@score_card
	end



end
