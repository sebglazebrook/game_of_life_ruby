require "cell"
require "cells"

class CellFactory

  def self.create(width, height)
    cells = []
    (width * height).times { cells << Cell.new }
    Cells.new(width, height, cells)
  end

end
