#require 'pry'
player_choice = "" #Player can choose rock, paper or scissor
player_score = 0 #Keep track of player score
computer_score = 0 #Keep track of computer score
play_again = "" #Check if player wants to play again

until computer_score == 5 || player_score == 5 do #When either player or computer gets 5 points end game
	until player_choice == "rock" || player_choice == "paper" || player_choice == "scissor" do
		puts "Player pick rock, paper or scissor:"
		player_choice = gets.chomp #Wait for player input
		break
	end
	puts "Player chose: #{player_choice}"

	comp_array = ["rock", "paper", "scissor"]
	computer_choice = comp_array.sample #randomly choose one sample from the array
	puts "Computer chose: #{computer_choice}"

	if player_choice == computer_choice #Win and Lose logic for RPS game
		puts "It's a Draw!"
	else
		case player_choice
		when "rock"
			if computer_choice == "scissor"
				puts "Player Wins!"
				player_score = player_score + 1
			else
				puts "Player Loses!"
				computer_score = computer_score + 1
			end
		when "paper"
			if computer_choice == "rock"
				puts "Player Wins!"
				player_score = player_score + 1
			else
				puts "Player Loses!"
				computer_score = computer_score + 1
			end
		when "scissor"
			if computer_choice == "paper"
				puts "Player Wins!"
				player_score = player_score + 1
			else
				puts "Player Loses!"
				computer_score = computer_score + 1
			end
		end
	end

	puts "Player Score is: #{player_score}"
	puts "Computer Score is: #{computer_score}"
	player_choice = "" #Reset choices
	computer_choice = "" #Reset choices

	if player_score == 5 
		puts "GAME OVER! Player Wins!"
		break
	end
	if computer_score == 5
		puts "GAME OVER! Computer Wins! "
		break
	end

	puts "Play again? Type 'n' to exit the game. Type any key to continue"
	play_again = gets.chomp
	if play_again == "n" #If n is typed, end the game early and print scores and who won the game
		if player_score > computer_score
			puts "GAME OVER (early)! Player Wins!"
		elsif computer_score > player_score
			puts "GAME OVER (early)! Computer Wins!"
		else
			puts "GAME OVER (early)! Its a Draw!"
		end
		break
	end

end
#binding.pry 


