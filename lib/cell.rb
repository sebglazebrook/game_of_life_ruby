class Cell

  def initialize
    @alive = false
  end

  def alive?
    @alive
  end

  def dead?
    !alive?
  end

  def die!
    @alive = false
  end

  def live!
    @alive = true
  end

end
