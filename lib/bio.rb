require 'httparty'
require 'pry'
require 'json'
require './user_info'

class Bio
  attr_reader :specific_info

  def initialize(specific_info)
    @specific_info = UserInfo.new("Alaina-Noel").user_data("bio")
  end

  def bio_length
    specific_info.length
  end

  def long_enough?
    specific_info.length > 25
  end

  def contains_punctuation?
    special = "?<>',?[]}{=-)(*&^%$#`~{}".split("")
    info_array = specific_info.split("")
    !(special & info_array).empty?
  end

end

alaina_info = UserInfo.new("Alaina-Noel")
alaina_bio = Bio.new("bio")
p alaina_bio.bio_length
p alaina_bio.long_enough?
p alaina_bio.contains_punctuation?

