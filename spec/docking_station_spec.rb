require_relative '../lib/docking_station'

describe DockingStation do
    docking_station = DockingStation.new
    subject {docking_station}
    it { is_expected.to respond_to(release_bike)}
  end
