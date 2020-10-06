def game
    a=rand(50..150)

    for i in (1..10)
    puts "Guess the number"
    b=gets.chomp.to_i
    if (b<a && i==10) or (b>a && i==10) 
        puts "Oops U have lose the game..."
    elsif b<a
        puts "Guessed number is lesser than Computer's number"
    elsif b>a
        puts "Guessed number is greater than Computer's number"
    elsif b==a
        puts "Congratulations.....!!!!!!!!!!! /n YOU HAVE WIN THE GAME"
        puts "U win the game at #{i} try"
        break
    elsif 
        puts "Oops....!!!/n U have loss the Game"
    end
    end
end

game()