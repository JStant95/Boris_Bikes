
require 'bikes'

describe DockingStation do

  it 'instance of the DockingStation should respond to release_bike' do
    bike = DockingStation.new
    expect(bike).to respond_to(:release_bike)
  end
  
end