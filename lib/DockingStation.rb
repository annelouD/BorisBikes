
class DockingStation
  attr_reader :docked, :DEFAULT_CAPACITY
  DEFAULT_CAPACITY = 20
  def initialize(capacity = DEFAULT_CAPACITY)
    @docked = []
    # @docked = Array.new
    @DEFAULT_CAPACITY = capacity
  end


  def release_bike
    fail "No bikes available" if empty?
    @docked.pop
    # if empty?
    #   @docked.pop
    #   Bike.new
    # else
    #   fail "No bikes available"
    # end
  end

  def dock_bike(bike)
    fail "Station Full" if full?
    @docked.push(bike)
    # if empty?
    #   @docked.push(bike)
    # else 
    #   fail "Station Full"
    # end
  end

  private
  def full? 
    @docked.count >= @DEFAULT_CAPACITY
  end

  def empty?
    @docked.empty?
    # if @docked.count == 0
    #   true
    # else
    #   false
    # end
  end

end

class Bike

  def working?
    true
  end

  def report_broken(report_broken = false)
    true
  end


  def broken?
    report_broken
  end

end