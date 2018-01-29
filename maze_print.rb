require 'byebug'

class Maze_Print

  def maze_output(maze)

    #print_wall()
    maze.each do |y|
      y.each {|x| puts print_cell(x)}
      puts
    end
  end


  def print_cell(cell)

  end

end
