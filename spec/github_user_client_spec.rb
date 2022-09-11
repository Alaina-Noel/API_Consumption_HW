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

end