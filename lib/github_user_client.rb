require 'httparty'
require 'pry'
require 'json'

class GithubUsersClient
  
  def get(user_name)
    response = HTTParty.get "https://api.github.com/users/#{user_name}"
    body = response.body
    JSON.parse(body)
  end

end



