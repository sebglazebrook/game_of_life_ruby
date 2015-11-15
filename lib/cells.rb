class Cells < SimpleDelegator

  attr_reader :width, :height

  def initialize(width, height, initial_values = [])
    @width = width
    @height = height
    super(initial_values)
  end

end
