class HomeController < ApplicationController
  def index
    @card_info = CardDatum.get_api_info
    @home = CardDatum.paginate(page: params[:page], per_page: 10)
  end

  def about
  end

  def search
    @name = params[:name]
    require 'net/http'
    require 'json'
    @search_url = "https://api.magicthegathering.io/v1/cards/?name= " + @name
    @search_uri = URI(@search_url)
    @search_response = Net::HTTP.get(@search_uri)
    @search_cards = JSON.parse(@search_response)
  end

end
