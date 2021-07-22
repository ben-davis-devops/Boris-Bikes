require_relative 'bike'
class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity
  
  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'no bikes' if self.empty?
      bikes.pop
  end

  def dock(bike)
    fail 'too many bikes at docking station' if  self.full?
    # cannot add bike if bikes in docking_station already >1
      bikes.push(bike)
  end

  private

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end
  
end