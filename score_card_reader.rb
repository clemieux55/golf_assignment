
class ScoreCardReader

	def initialize(player_scores, par_scores)
		@player_scores = player_scores
		@par_scores = par_scores
	end

	def display_scores
		for x in 0 .. 17 do
			ps = @player_scores[x]
			pars = @par_scores[x]
			puts "#{@player_scores[x]}" + " " + "#{@par_scores[x]}" + " " + "#{name_of_hole_score(ps, pars)}"
		end
			puts "==========="
			puts display_player_name
			puts "Total : #{total_score}"
			puts "==========="
	end

	def display_player_name
		@player_scores.last
	end

	def name_of_hole_score(stroke, par)

		if stroke == 1
			'Ace'
		end
		unless stroke == 1
			score = (stroke.to_i - par.to_i)
			case score
			when -2
				'Eagle'
			when -1
				'birdie'
			when 0
				'par'
			when 1
				'bogey'
			when 2 
				'double-bogey'
			else
				"#{score.abs} over par"
			end
		end
	end

	def total_score
		sum = 0 
		@player_scores.each do |score|
			sum += score.to_i
		end

		sum
	end
end




