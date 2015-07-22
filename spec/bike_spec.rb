require 'bike'

describe Bike do
  it 'recognized working method' do
    expect(subject).to respond_to :working?
  end
end
