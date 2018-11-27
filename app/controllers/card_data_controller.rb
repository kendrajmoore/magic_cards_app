class CardDataController < ApplicationController
  before_action :set_card_datum, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update, :destroy, :show]


  # GET /card_data
  # GET /card_data.json
  def index
    @card_data = CardDatum.all
  end

  # GET /card_data/1
  # GET /card_data/1.json
  def show
    @card_datum = CardDatum.find(params["id"])
  end

  # GET /card_data/new
  def new
    @card_datum = CardDatum.new
  end

  # GET /card_data/1/edit
  def edit
    @card_datum = CardDatum.find(params["id"])
  end

  # POST /card_data
  # POST /card_data.json
  def create
    @card_datum = CardDatum.new(card_datum_params)

    respond_to do |format|
      if @card_datum.save
        format.html { redirect_to @card_datum, notice: 'Card datum was successfully created.' }
        format.json { render :show, status: :created, location: @card_datum }
      else
        format.html { render :new }
        format.json { render json: @card_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_data/1
  # PATCH/PUT /card_data/1.json
  def update
    respond_to do |format|
      if @card_datum.update(card_datum_params)
        format.html { redirect_to @card_datum, notice: 'Card datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @card_datum }
      else
        format.html { render :edit }
        format.json { render json: @card_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_data/1
  # DELETE /card_data/1.json
  def destroy
    @card_datum.destroy
    respond_to do |format|
      format.html { redirect_to card_data_url, notice: 'Card datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_datum
      @card_datum = CardDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_datum_params
      params.require(:card_datum).permit(:user_id, :name, :manaCost, :layout, :colors, :rarity, :text, :power, :toughness)
    end

    def correct_user
        @correct = current_user.card_datum.find_by(id: params[:id])
    end
end
