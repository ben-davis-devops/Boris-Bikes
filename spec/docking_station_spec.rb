require 'docking_station'
describe DockingStation do
  it { is_expected.to respond_to :release_bike}
  
  it 'releases working bikes' do
    bike = subject.release_bike # bike = new element(method - release bike)
    expect(bike).to be_working # checking if be_working function shows that the bike is working
  end
end

