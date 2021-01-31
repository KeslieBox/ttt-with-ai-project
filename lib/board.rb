class Board
    attr_accessor :cells

    def initialize
        @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


    end

    def display
        puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
        puts "-----------"
        puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
        puts "-----------"
        puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    end
    
    def reset!
        @cells.clear
        @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

    end
    
    def position(input)
        index = input.to_i - 1
        @cells[index]
    end

    def full?
        @cells.all? {|index| index == "X" || index == "O"}
    end

    def turn_count
        @cells.count{|index| index == "X" || index == "O"}
    end

    def taken?(index)
        position(index) == "X" || position(index) == "O"
    end
    
    def valid_move?(index)
        index.to_i.between?(1,9) && !taken?(index)
    end

    def update(index, player)

        @cells[index.to_i-1] = player.token
    end

end
