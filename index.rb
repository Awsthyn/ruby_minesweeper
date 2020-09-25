# Class Cell
class Cell
    attr_reader :value
    
      def initialize
        @value =  rand < 0.5 ? "*" : " "
      end
    
end

# Class Board
class Board
    attr_reader :value
    
    def generate_column
        column = []
        for i in 0..9
        if i == 0 || i == 9
          column << '|'
        else 
          cell = Cell.new
          column << cell.value
        end
       
      end
        column
    end
    
    def generate_horizontal_border
        column = []
        for i in 0..9
        if i == 0 || i == 9
          column << '+'
        else 
          column << '-'
        end
       
      end
        column
    end

    def generate
    board = []    
    for i in 0..9
            if i == 0 || i == 9
            board << generate_horizontal_border
            else
            board << generate_column
            end
        
        board
        end
    end


    def initialize 
      @value = generate  
    end
  
  
  end