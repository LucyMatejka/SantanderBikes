require 'dockingstation'
require 'bike'

describe DockingStation do
  #  it 'responds to release_bike' do
  #    expect(subject).to respond_to :release_bike
  it { is_expected.to respond_to :release_bike }
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe 'initialization' do
    subject {DockingStation.new}
    let(:bike) { Bike.new }
    it 'defaults capacity' do
      decribed_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Docking station full'
    end
  #  it 'has a variable capacity' do
  #    docking_station = DockingStation.new(50)
  #    50.times { docking_station.dock Bike.new }
  #    expect{ docking_station.dock Bike.new }.to raise_error 'Docking station full'
  #  end
  end


  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error when there are no bikes available' do
      expect {subject.release_bike }.to raise_error 'No bikes available'
    end
  end

it {is_expected.to respond_to(:dock).with(1).arguments }
it 'docks something' do
  bike = Bike.new
  expect(subject.dock(bike)).to eq bike
end

describe '#dock' do
  it 'raises an error when full' do
    #20.times {subject.dock(Bike.new)}
    DockingStation::DEFAULT_CAPACITY.times do
      subject.capacity.times { subject.dock Bike.new }
    end
    expect { subject.dock Bike.new }.to raise_error 'Docking station full'
  end
  #updated for 7th user story- docking station can dock 20 bikes
end

it {is_expected.to respond_to(:bike)}
it 'returns docked bikes' do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bike).to eq bike
end
end
