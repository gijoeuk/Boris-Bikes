require_relative 'bike'

class DockingStation

  def initialize
    @bike_array = []
  end

  def release_bike
      if !self.empty?
        return @bike_array.last
      else
        fail "No bikes"
      end
  end

  def dock(bike)
      if self.full?
        fail "docking station full"
      else
        @bike_array << bike

      end
  end

  def bike
    @bike_array.last
  end



  def full?
    @bike_array.count >= 20
  end

  def empty?
    @bike_array.count == 0
  end

end
