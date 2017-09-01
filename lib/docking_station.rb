require_relative 'bike'

class DockingStation


  def release_bike
      if @bike != nil
        return @bike
      else
        fail "No bikes"
      end
  end

  def dock(bike)
      if @bike !=nil
        fail "docking station full"
      else
        @bike = bike
      end
  end

  def bike
    @bike
  end

end
