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
      @bike = bike
  end

  def bike
    @bike
  end

end
