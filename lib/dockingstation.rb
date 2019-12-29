require_relative 'bike'

class DockingStation
  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end
#instance variable used to store the bike

  def bike
    @bike
  end
#return the docked bike
end
