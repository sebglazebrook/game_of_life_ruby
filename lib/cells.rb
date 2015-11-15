class Cells < SimpleDelegator

  attr_reader :width, :height

  def initialize(width, height, initial_cells = [])
    @width = width
    @height = height
    super(initial_cells)
  end

  def alive_cells
    select { |cell| cell.alive? }
  end

end
