require 'byebug'

class Maze_Print

  def initialize
    @wall = "|"
    @floor = "-"
    @space = " "
    @divider = "*"
  end



  def maze_output(column,length)

    print_roof(column[0])
    column.each do |row|
      row.each do |cell|
        print_wall(cell)
        print cell.symbol
      end
      print_wall(row[row.length-1])
      puts
      print_floor(row)
      puts
    end
  end

  def print_roof(row)
    row.each do |cell|
      print @divider
      if cell.walls[0]
        print @floor
      else
        print @space
      end
    end
    
    print @divider
    puts
  end

  def print_wall(cell)
    if cell.walls[3]
      print @wall
    else
      print @space
    end
  end

  def print_floor(row)
    row.each do |column|
      print @divider
      if column.walls[2]
        print @floor
      else
        print @space
      end
    end
    print @divider
  end


  # def print_cell(cell)
  #
  # end

end
