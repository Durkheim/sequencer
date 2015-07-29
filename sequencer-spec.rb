require_relative "sequencer"

describe "#sequencer" do

  it "should accept an array with a list of integers and convert it to a string" do
    expect(sequencer([1,2,3,5,7,9,10,11])).to be_a(String)
  end

  it "should convert sequential integers to the format x-x, eg. 1-3" do
    expect(sequencer([1,2,3,5,7,9,10,11])).to eq("1-3,5,7,9-11")
    expect(sequencer([10,21,22,24,25,99,100])).to eq("10,21-22,24-25,99-100")
    expect(sequencer([-2,-1,0,24,25,99,100])).to eq("-2-0,24-25,99-100")
    expect(sequencer([-2,-1,0,8,-9,99,100])).to eq("-2-0,8,-9,99-100")
  end

end