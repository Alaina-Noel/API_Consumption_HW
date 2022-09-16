require 'httparty'
require 'pry'
require 'json'

response = HTTParty.get 'https://api.github.com/users/Alaina-Noel/' #1.what is this line of code doing?
#sends an HHTP get request to ^^ location. Receives a response. Save it to the response variable.

body = response.body

binding.pry

#HTTP clients are something that can send/receive requests/responses
  #google chrome, curl, HTTParty
