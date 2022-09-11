require './lib/bio'

RSpec.describe Bio do

  it "exists" do
    bio = Bio.new("bio")

    expect(bio).to be_instance_of(Bio)
  end

  it "can tell the length of a bio" do
    bio = Bio.new("bio")

    expect(user_client.get("Alaina-Noel").class).to eq(Hash)
  end

  it "can parse data into a hash" do
    user_client = double("Alaina-Fake")
    allow(user_client).to receive(:get).and_return({"key1"=> "value1", "key2"=> "value2"})
    #am i doing this right?
  end

end