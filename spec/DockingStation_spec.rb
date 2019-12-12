require 'DockingStation.rb'


describe DockingStation do
  it 'can respond to message release_bike' do
    ds = DockingStation.new.dock_bike(Bike.new)
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'releases bike in response to release_bike' do
    ds = DockingStation.new
    ds.dock_bike(Bike.new)
    expect(ds.release_bike).to be_a(Bike)
  end

  it 'expects new bike to be working' do
    ds = DockingStation.new
    ds.dock_bike(Bike.new)
    bike = ds.release_bike
    expect(bike.working?).to eq(true)
  end

  it 'can respond to dock_bike' do
    expect(DockingStation.new).to respond_to(:dock_bike)
  end

  it 'can show user if a bike has been docked' do
    expect(DockingStation.new).to respond_to(:docked)
  end

    it 'raises an error if no bike is avalible' do
      # ds = DockingStation.new
      expect{subject.release_bike}.to raise_error("No bikes available")
    end

  # it 'only releases bike if bike available' do
  #   ds = DockingStation.new.dock_bike(Bike.new)

  #   expect{ds.release_bike}.to raise_error("No bikes available")
  # end

  it 'only docks bike if under capacity' do
    ds = DockingStation.new
    20.times {ds.dock_bike(Bike.new)}
    expect{ds.dock_bike(Bike.new)}.to raise_error("Station Full")
  end

  it 'allows capacity to be specified at initialization' do
    expect(DockingStation).to respond_to(:new).with(1).argument
  end

  it 'sets capacity to 20 unless specified otherwise' do
   expect(DockingStation.new.DEFAULT_CAPACITY).to eq(20)
  end
=begin
  #it 'will not release broken bikes' do
  #  ds = DockingStation.new(1)
  #  bike = Bike.new
  #  bike.report_broken
  #  subject.dock_bike(bike)
  #  expect {ds.release_bike}.to raise_error("No bikes available"#)
  #end
=end
end