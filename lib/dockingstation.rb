require_relative 'bike'

class DockingStation
  attr_reader :bike
#replaces bike method to return @bike (the docked bike)
  def release_bike
    Bike.new
  end

  def dock(bike)
    fail 'Docking station full' if @bike
    @bike = bike
  end
#instance variable used to store the bike

#  def bike
#    @bike
#  end
#return the docked bike

def release_bike
  fail 'No bikes available' unless @bike
  @bike
end
#error catching line first- guard condition
end
