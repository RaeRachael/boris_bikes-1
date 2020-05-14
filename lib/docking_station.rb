require_relative "bike"

class DockingStation

  attr_reader :bike_check 

  def initialize(cap = DEFAULT_CAPACITY)
    @bike_check = []
    @capacity = cap
  end

  DEFAULT_CAPACITY = 20

  def release_bike
    unless empty?
      @bike_check.pop
    else
      fail("There are no bikes available.")
    end
  end

  def dock(bike)
    if full?
      fail("This station is full.")
    else
       @bike_check << bike
    end
  end

  private
  def full?
    @bike_check.length == DEFAULT_CAPACITY
  end

  def empty?
    @bike_check.length == 0
  end
end
