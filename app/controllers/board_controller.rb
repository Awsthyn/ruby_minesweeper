class BoardController < ApplicationController
  def new
  board= Board.new
  @board = {:problem => board.value}
  @solution = {:solution => board.resolve}
  end

  def create
  end
end


# Class Cell
class Cell
  attr_reader :value
  
    def initialize
      @value =  rand < 0.5 ? "*" : " "
    end
  
end

# Class Board
class Board
  include ActiveModel::Conversion
  attr_reader :value
  
  def generate
  board = []    
  for i in 0..9
          if i == 0 || i == 9
          board << generate_horizontal_border
          else
          board << generate_column
          end
      
      
      end
      board
  end


  def initialize 
    @value = generate()
  end

  def resolve
  solution = []

  for i in 0..9
      column_resolution = []
      for j in 0..9
        if value[i][j] == " "
          counter = 0
          value[i-1][j-1] == "*" ? counter += 1 : false
          value[i][j-1] == "*" ? counter += 1 : false
          value[i+1][j-1] == "*" ? counter += 1 : false
          value[i-1][j] == "*" ? counter += 1 : false
          value[i+1][j] == "*" ? counter += 1 : false
          value[i-1][j+1] == "*" ? counter += 1 : false
          value[i][j+1] == "*" ? counter += 1 : false
          value[i+1][j+1] == "*" ? counter += 1 : false
          column_resolution.push << counter
        else
          column_resolution.push << value[i][j]
        end
        
      end
      solution.push << column_resolution
    end
    solution
  end

end



#Funciones auxiliares  
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
