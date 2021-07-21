require_relative 'bike'
class DockingStation
  attr_reader :bike
  @bikecount = 0
  def release_bike
    #Bike.new
    unless @bikecount > 1 
      fail "no Bikes" 
    end
  end

  def dock(bike)
    @bike = bike
  end
  #def release_bike
      #if @bikecount < 1 == true
      #fail 
    #else
      #@bikecount -= 1 
      #@bike
    #end

  #end

  #def dock(bike)
    #@bike = bike
    #@bikecount += 1
  #end

  
end