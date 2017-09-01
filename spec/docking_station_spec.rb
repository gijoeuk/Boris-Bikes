require 'docking_station'

describe DockingStation do

  describe "#release_bike" do

    it "releases bike using bike_release method" do
      expect(subject).to respond_to :release_bike
    end

    it "releases working bikes" do
      bike = subject.release_bike
      expect(bike).to be_working
    end

  end

  describe "#dock" do

    it "docks a bike" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

  end

  describe "#bike" do




  end


end
