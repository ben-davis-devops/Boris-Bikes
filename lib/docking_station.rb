require_relative 'bike'
class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :capacity
  
  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  # def capacity
  #   @capacity = DEFAULT_CAPACITY unless
  # end
  def release_bike
    fail 'no bikes' if self.empty?
      bikes.pop
  end

  def dock(bike)
    fail 'too many bikes at docking station (20)' if  self.full?
    # cannot add bike if bikes in docking_station already >1
      bikes.push(bike)
  end

  private
  attr_reader :bikes
  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end
  
end