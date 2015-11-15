require 'universe_factory'
require 'universe_view'

module GameOfLife

  def self.start
    universe = UniverseFactory.create
    UniverseView.new(universe)
  end

end
