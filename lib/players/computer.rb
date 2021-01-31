module Players
    class Computer < Player
        def move(board)
            array = ["1", "2", "3", "4", "5", "6","7", "8", "9"]
            array.sample
            
        end
    end
end


# ["X", "O", "X", "O", "X", "O", "X", "O", "X"]
# ["1", "2", "3", "4", "5", "6","7", "8", "9"]

# first_move = [4] 
# second_best_moves = [8,6,2,0] 
# least_valuable_moves = [7,5,3,1]