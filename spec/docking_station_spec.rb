require 'docking_station'
describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it { is_expected.to respond_to(:dock).with(1).argument}
  
  it 'releases working bikes' do
    bike = subject.release_bike # bike = new element(method - release bike)
    expect(bike).to be_working # checking if be_working function shows that the bike is working
  end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  # it 'a message describing the test' do
  #  expect(the method).to eq the argument output
  # end
end

