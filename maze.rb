require 'byebug'
require_relative 'cell'
require_relative 'maze_print'

class Maze
  def initialize (x,y)
    @length= x
    @hight = y
    @maze = generate_template
    @p = Maze_Print.new

  end

  attr_accessor :maze

  def generate_template

    new_maze = Array.new(@hight,Array.new(@length,Cell.new(true,true,true,true)))

    return new_maze
  end

  def print_maze
    @p.maze_output(@maze,@length)
  end


end
