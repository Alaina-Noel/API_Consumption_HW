require './lib/github_user_client'


RSpec.describe GithubUsersClient do

  it "exists" do
    user_client = GithubUsersClient.new

    expect(user_client).to be_instance_of(GithubUsersClient)
  end

end