require 'docking_station'

describe DockingStation do

  describe "#release_bike" do

    it "releases bike using bike_release method" do
      expect(subject).to respond_to :release_bike
    end

    it "releases working bikes" do
      subject.dock(Bike.new)
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it "return an error if no bike is docked" do
      expect{subject.release_bike}.to raise_error "No bikes"
    end
  end

  describe "capacity" do

    it "docking station of capacity 5" do
      capacity = 5
      docking_station = DockingStation.new(capacity)
      capacity.times {docking_station.dock(Bike.new)}
      expect{docking_station.dock(Bike.new)}.to raise_error "docking station full"
    end

    it "docking station of capacity 10" do
      capacity = 10
      docking_station = DockingStation.new(capacity)
      capacity.times {docking_station.dock(Bike.new)}
      expect{docking_station.dock(Bike.new)}.to raise_error "docking station full"
    end

    it "has a default capacity" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

  end

  describe "#dock" do

    it "docks a bike" do
      bike = Bike.new
      expect(subject.dock(bike).last).to eq bike
    end

    it "fails if docking_station is full" do
      DockingStation::DEFAULT_CAPACITY.times do
      subject.dock Bike.new
      end
      expect{subject.dock(Bike.new)}.to raise_error "docking station full"
    end

  end

  describe "#bike" do

    it "shows a docked bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

  end

end
