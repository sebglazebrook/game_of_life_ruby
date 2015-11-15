require "universe"

class UniverseFactory

  def self.create
    Universe.new.trigger_big_bang
  end

end
