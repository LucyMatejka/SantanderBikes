require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end
  #create array for bikes
  #attr_reader :bike
#replaces bike method to return @bike (the docked bike)
  def release_bike
    #fail 'No bikes available' if @bikes.empty?
    fail 'No bikes available' if empty?
    #use private helper method empty? Single Responsibility Principle
    #@bikes.pop use private attr_reader
    #Bike.new
    bikes.pop
  end

  def dock(bike)
    #fail 'Docking station full' if @bikes.count >= 20
    fail 'Docking station full' if full?
    #use private method helper full?
    #@bikes << bike
    bikes << bike
  end

  private

  attr_reader :bikes

  def full?
  #  @bikes.count >= DEFAULT_CAPACITY
  bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
  #  @bikes.empty?
    bikes.empty?
  end
#instance variable used to store the bike

#  def bike
#    @bike
#  end
#return the docked bike

#def release_bike
#  fail 'No bikes available' unless @bike
#  @bike
#end
#error catching line first- guard condition
end
