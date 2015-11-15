class FatherTime

  attr_reader :tick_count

  def initialize
    @tick_count = 0
  end

  def start
    @tick_count += 1
    @on_tick_callback.call if @on_tick_callback
  end

  def on_tick(&block)
    @on_tick_callback = block if block_given?
  end

end
