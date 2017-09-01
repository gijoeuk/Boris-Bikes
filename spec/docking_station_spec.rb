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

  describe "#dock" do

    it "docks a bike" do
      bike = Bike.new
      expect(subject.dock(bike).last).to eq bike
    end

    it "fails if docking_station is full" do
      #subject is empty
      20.times{subject.dock Bike.new}
      #subject is full
      expect{subject.dock(Bike.new)}.to raise_error "docking station full"
    end


  end

  describe "#bike" do

    it "shows a docked bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

    describe 'full?' do
      it "raises true if DS is full" do
      20.times{subject.dock Bike.new}
      expect(subject.full?).to eq true
    end
  end
end
