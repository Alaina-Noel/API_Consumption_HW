require './lib/github_user_client'
require './lib/user_info'

RSpec.describe UserInfo do

  it "exists" do
    user_info = UserInfo.new("Alaina-Noel")

    expect(user_info).to be_instance_of(UserInfo)
  end

 xit "can tell the length of a bio" do
    bio = Bio.new("bio")

    expect(user_client.get("Alaina-Noel").class).to eq(Hash)
  end

  xit "can parse data into a hash" do
    user_client = double("Alaina-Fake")
    allow(user_client).to receive(:get).and_return({"key1"=> "value1", "key2"=> "value2"})
    #am i doing this right?
  end

end