require 'docking_station'

describe DockingStation do
  it "releases bike using bike_release method" do
    expect(subject).to respond_to :release_bike
  end
end
