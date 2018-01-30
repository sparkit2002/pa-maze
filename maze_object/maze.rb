require 'byebug'
require_relative 'cell'
require_relative 'maze_print'
require_relative 'maze_loader'

class Maze
  def initialize (x,y)
    @length= x
    @hight = y
    @maze = generate_template
    @p = Maze_Print.new
    @l = Maze_Loader.new

  end

  attr_accessor :maze

  def generate_template

    new_maze = Array.new(@hight,Array.new(@length,Cell.new(false,false,false,false)))

    return new_maze
  end

  def print_maze
    @p.maze_output(@maze,@length)
  end

  def load_maze(values)
    # puts "input a string of 1s and 0s"
    # values = $stdin.gets.chomp
    
    @maze = @l.load_maze(@maze,values,@length,@hight)
  end

end
