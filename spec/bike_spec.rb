require_relative '../lib/bike'

describe Bike do
  subject(:bike) { Bike.new }
  it "should respond to #working?" do
    expect(bike).to respond_to(:working?)
  end

  it "should work" do
    expect(bike.working?).to eq(true)
  end
end
