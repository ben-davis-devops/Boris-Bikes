require 'docking_station'
describe Bike do
  it { is_expected.to respond_to :working?}

  it 'report bike is broken' do
    subject.report
    expect(subject).to be_broken
  end
end
