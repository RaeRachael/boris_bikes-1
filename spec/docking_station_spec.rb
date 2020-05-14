require_relative '../lib/docking_station'
require_relative '../lib/bike'
describe DockingStation do
  subject(:station) { DockingStation.new }
  it "should respond to #release_bike" do
    expect(station).to respond_to(:release_bike)
  end

  it "should return a bike after #release_bike is called" do
    expect(station.release_bike).to be_an_instance_of(Bike)
  end

  it "should respond to #dock" do
    expect(station).to respond_to(:dock)
  end

  it "should be happy to dock a thing" do
    expect{ station.dock(Bike.new) }.to_not raise_error
  end

  it "can show whether a bike is there or not" do
  end
end
