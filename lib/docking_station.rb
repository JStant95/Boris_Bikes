require_relative 'bikes'

class DockingStation
attr_reader :bikes

def initialize
@bikes = []
end

  def release_bike
    fail "There are no bikes in this station" unless @bikes
    @bikes
  end

  def dock(bike)
    fail 'There is already a bike in this station' unless @bikes == []
    @bikes = bike
  end
end
