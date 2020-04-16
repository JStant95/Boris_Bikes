require 'docking_station'
require 'bikes'

describe DockingStation do
  subject (:docking) {described_class.new}
  it { is_expected.to respond_to :release_bike}

  it 'release working bikes' do
    expect(docking.release_bike).to be_working
  end

 it { is_expected.to respond_to(:dock).with(1).argument }

 it { is_expected.to respond_to :bike}
end
