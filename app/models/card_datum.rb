class CardDatum < ApplicationRecord
    belongs_to :user

    def self.get_api_info
        require 'net/http'
        require 'json'
        @url = "https://api.magicthegathering.io/v1/cards"
        @uri = URI(@url)
        @response = Net::HTTP.get(@uri)
        @cards = JSON.parse(@response)
    end
end
