class CardController < ApplicationController
  def index
     require 'net/http'
     require 'json'
     @url = "https://api.magicthegathering.io/v1/cards"
     @uri = URI(@url)
     @response = Net::HTTP.get(@uri)
     @cards = JSON.parse(@response)
  end
end
