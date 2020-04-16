require 'docking_station'
require 'bikes'

describe DockingStation do
  # Step 8 Unit test
  it { is_expected.to respond_to :release_bike}

  it 'release working bikes' do
    # dock = DockingStation.new
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

end
