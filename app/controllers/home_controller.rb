class HomeController < ApplicationController
require 'will_paginate/array'

  def index
      require 'net/http'
      require 'json'
      @url = "https://api.magicthegathering.io/v1/cards"
      @uri = URI(@url)
      @response = Net::HTTP.get(@uri)
      @cards = JSON.parse(@response)
    # @home = @card_info
    # .paginate(page: params[:page], per_page: 10)
  end

  def about
  end

  def show
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
