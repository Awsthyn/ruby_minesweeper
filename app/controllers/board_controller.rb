class BoardController < ApplicationController
  def new
  board= Board.new
  @board = {:problem => board.value}
  @solution = {:solution => board.resolve}
  end

  def create
  end
end


