require_relative 'bikes'

class DockingStation
attr_reader :bike

  def release_bike
    fail "There are no bikes in this station" unless @bike
    @bike
  end

  def dock(bike)
    fail 'There is already a bike in this station' unless @bike == nil
    @bike = bike
  end
end
