class HomeController < ApplicationController
  def index
    @card_info = CardDatum.get_api_info
  end

  def about
  end
end
