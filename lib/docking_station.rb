require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(capacity= DEFAULT_CAPACITY)
    @capacity = capacity
    @bike_array = []
  end

  def release_bike
      if !empty?
        return @bike_array.last
      else
        fail "No bikes"
      end
  end

  def dock(bike)
      if full?
        fail "docking station full"
      else
        @bike_array << bike

      end
  end

  def bike
    @bike_array.last
  end

private

  def full?
    @bike_array.count >= @capacity
  end

  def empty?
    @bike_array.count == 0
  end

end
