require './lib/github_user_client'

RSpec.describe GithubUsersClient do

  it "exists" do
    user_client = GithubUsersClient.new

    expect(user_client).to be_instance_of(GithubUsersClient)
  end

  it "can parse data into a hash" do
    user_client = GithubUsersClient.new

    expect(user_client.get("Alaina-Noel").class).to eq(Hash)
  end

  it "can parse data into a hash" do
    user_client = double("Alaina-Fake")
    allow(user_client).to receive(:get).and_return({"key1"=> "value1", "key2"=> "value2"})
    #am i doing this right?
  end

end