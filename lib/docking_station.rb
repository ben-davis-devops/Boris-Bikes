require_relative 'bike'
class DockingStation
  attr_reader :bike
  #@bikecount = 0
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'no bikes' if @bikes.empty?
      @bikes.pop
  end

  def dock(bike)
    fail 'too many bikes at docking station (20)' if  @bikes.count >= 20
    # cannot add bike if bikes in docking_station already >1
      @bikes.push(bike)
  end

  
end