require_relative 'bike'

class DockingStation

  def initialize
    @bike_array = []
  end

  def release_bike
      if @bike_array.count > 0
        return @bike_array.last
      else
        fail "No bikes"
      end
  end

  def dock(bike)
      if @bike_array.count > 19
        fail "docking station full"
      else
        @bike_array << bike

      end
  end

  def bike
    @bike_array.last
  end

end
