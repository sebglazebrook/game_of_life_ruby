require "god"
require "father_time"
require "seeder"
require "cell_factory"

class Universe

  attr_reader :cells, :time

  def initialize
    @time = FatherTime.new
    @time.on_tick(&method(:evolve))
  end

  def trigger_big_bang
    @cells = CellFactory.create(4, 4)
    Seeder.seed(@cells)
    @time.start
  end

  private

  def evolve
    # TODO how to evolve?
  end

end
