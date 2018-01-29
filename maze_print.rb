require 'byebug'

class Maze_Print

  def maze_output(column,length)

    #print_wall()
    edge(length)
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

  def edge(length)
    length.times do
      print "*-"
    end
    print "*"
    puts
  end

  def print_wall(cell)
    if cell.walls[3]
      print "|"
    else
      print " "
    end
  end

  def print_floor(row)
    row.each do |column|
      print "*"
      if column.walls[2]
        print "-"
      else
        print " "
      end
    end
    print "*"
  end


  # def print_cell(cell)
  #
  # end

end
