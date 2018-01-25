require 'byebug'

class Maze_Print

  def maze_output(maze)

    maze.each do |y|
      y.each {|x| print x}
      puts
    end

  end
end
