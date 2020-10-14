require 'docking_station'

RSpec.describe DockingStation do
  describe "#release_bike" do
    it "Releases a bike" do
      expect{subject.release_bike}.to raise_error("No bikes available")
      giorgio_bike = Bike.new
      subject.dock_bike(giorgio_bike)
      # expect(subject.release_bike).to be_instance_of Bike
    end
  end
    # describe "#dock" do
    #   # it "raises an error and says the docking station is full" do
    #   #   subject.dock_bike(Bike.new)
    #   #   expect{subject.dock}.to raise_error("Docking station is full")
    #   end
    # end
  # describe "#release_bike.working?" do
  #   it "Checks if release bike is working" do
  #     expect(subject.release_bike.working?).to eq true
  #   end
  # end
  describe "#dock_bike" do
    it "Docking station accepts bike" do
      giorgio_bike = Bike.new
      expect(subject.dock_bike(giorgio_bike)).to eq giorgio_bike
    end
    it "raises an error docking station is full" do
      subject.dock_bike(Bike.new)
      expect{subject.dock_bike Bike.new}.to raise_error("Docking station is full")
    end
  end
  describe "#has_bike?" do
    it "Checks if docking station has a bike" do
      expect(subject.has_bike?).to eq true
    end
  end
end
