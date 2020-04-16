require 'docking_station'
require 'bikes'

describe DockingStation do
  subject (:docking) {described_class.new}
  it { is_expected.to respond_to :release_bike}

it 'release working bikes' do
bike = Bike.new
docking.dock(bike)
expect(docking.release_bike).to be_working
end

 it { is_expected.to respond_to(:dock).with(1).argument }

 it { is_expected.to respond_to :bikes}

  it 'checking' do

    if docking.bikes.empty?
      expect { docking.release_bike }.to raise_error("There are no bikes in this station")
    end
  end

  it 'capacity checking' do
    docking.dock(Bike.new)

    expect { docking.dock(Bike.new) }.to raise_error("There is already a bike in this station")


  end
end
