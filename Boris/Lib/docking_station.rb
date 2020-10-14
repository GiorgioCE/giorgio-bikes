class DockingStation

  def dock_bike(bike)
    fail "Docking station is full" if @bike
    @bike = bike
  end

  def release_bike
    # bike = Bike.new
    fail "No bikes available" unless @bike
    @bike
    # raise
    #'Argument is not numeric' unless x.is_a? Numeric
  end
  # attr_accessor :bike
  # def dock_bike(bike)
  #
  #   @bike = bike
  # end

  def has_bike?
    true
  end
end
