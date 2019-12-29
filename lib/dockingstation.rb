require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end
  #create array for bikes
  attr_reader :bike
#replaces bike method to return @bike (the docked bike)
  def release_bike
    #fail 'No bikes available' if @bikes.empty?
    fail 'No bikes available' if empty?
    #use private helper method empty? Single Responsibility Principle
    @bikes.pop
    #Bike.new
  end

  def dock(bike)
    #fail 'Docking station full' if @bikes.count >= 20
    fail 'Docking station full' if full?
    #use private method helper full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
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
