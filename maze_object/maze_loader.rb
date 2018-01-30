require_relative 'cell'
require_relative 'maze'
require 'byebug'

class Maze_Loader

  def initialize
  end

  def load_maze(maze,string,length,hight)
    maze_fill = string.split("").each_slice(hight*2+1).to_a
  #  byebug
    maze[0] = load_wall(maze[0],maze_fill[0],0,hight)
  #  byebug
    iterator = 1
    maze.map! do |row|
      #byebug
      row = load_wall(row,maze_fill[iterator],3,hight)
    #  byebug
      row = load_last(row[row.length-1],maze_fill[iterator],1)
    #  byebug
      row = load_wall(row,maze_fill[iterator],2,hight)
      iterator += 1
    end

    return maze
  end

  def load_wall(row,values,wall,hight)
    count = 1
    num = 0

    #byebug
    until num == hight do
      #byebug
      if values[count] == "1"
        row[num].walls[wall] = true
      else
        
        row[num].walls[wall] = false
      end
      count += 2
      num += 1
      #byebug
    end
    #byebug
    return row
  end

  def load_last(cell,value,wall)
    if value[value.length-1] == "1"
      cell.walls[wall] = true
    else
      cell.walls[wall] = false
    end

    return cell
  end


end
