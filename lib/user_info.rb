require 'httparty'
require 'pry'
require 'json'
require './github_user_client'

class UserInfo
  attr_reader :user_data

  def initialize(username, client = GithubUsersClient.new)
    # @client = GithubUsersClient.new #don't do this bc we can't mock it out
    @client = client
    @username = username
    @user_data = @client.get(@username).map {|key, value| [key.to_sym, value] }.to_h #do this bc it makes an API call only when an object is instantiated
  end

  def user_data(key)
    specific_info = key.to_sym
    @user_data[specific_info]
  end

end
