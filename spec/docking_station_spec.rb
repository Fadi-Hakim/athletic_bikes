require 'docking_station'
require 'bike'

describe DockingStation do
  it "does method release bike" do
    expect(subject).to respond_to :release_bike
  end

  describe '#release_bike' do
    it 'recognizes docking station is empty' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  it "does method dock" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'releases a bike after docking' do
    subject.dock(Bike.new)
    bike = subject.release_bike
  end
end
