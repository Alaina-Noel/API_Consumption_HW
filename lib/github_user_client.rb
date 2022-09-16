require 'httparty' #HTTPARTY is a gem that is an http client (don't understand this completely)
require 'pry'
require 'json'

class GithubUsersClient
 
  def get(user_name)
    response = HTTParty.get "https://api.github.com/users/#{user_name}" #2. I was trying to put this into an initialize method but I don't know if this is a good idea or not
    body = response.body
    JSON.parse(body)
  end

end



