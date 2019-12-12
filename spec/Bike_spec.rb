require 'DockingStation.rb'

describe Bike do
  it 'responds to working?' do
  expect(Bike.new).to respond_to (:working?)
  end

  it 'can be reported_broken' do
    Bike.new.report_broken
    expect(Bike.new).to be_broken
  end
end