require 'httparty' #HTTPARTY is a gem that is an http client
require 'pry'
require 'json'

class GithubUsersClient
  #use dependency injection on the HTTP client within initialize
  
  def get(user_name)
    response = HTTParty.get "https://api.github.com/users/#{user_name}"
    body = response.body
    JSON.parse(body)
  end

end



