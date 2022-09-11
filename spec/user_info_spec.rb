require './lib/github_user_client'
require './lib/user_info'

RSpec.describe UserInfo do

  it "exists" do
    user_info = UserInfo.new("Alaina-Noel")

    expect(user_info).to be_instance_of(UserInfo)
  end

  #this is where I left off
 xit "can convert the hash keys into symbols o" do
  user_info = UserInfo.new("Alaina-Noel")

  allow(user_info).to receive(:new).and_return({"key1"=> "value1", "key2"=> "value2"})

    expect(user_info.user_data).to eq({:key1=> "value1", :key2 => "value2"})
  end

end