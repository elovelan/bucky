class KickersController < ApplicationController
  before_action :set_kicker, only: [:show, :edit, :update, :destroy]

  # GET /kickers
  # GET /kickers.json
  def index
    @kickers = Kicker.all
  end

  # GET /kickers/1
  # GET /kickers/1.json
  def show
  end

  # GET /kickers/new
  def new
    @kicker = Kicker.new
  end

  # GET /kickers/1/edit
  def edit
  end

  # POST /kickers
  # POST /kickers.json
  def create
    @kicker = Kicker.new(kicker_params)

    respond_to do |format|
      if @kicker.save
        format.html { redirect_to @kicker, notice: 'Kicker was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kicker }
      else
        format.html { render action: 'new' }
        format.json { render json: @kicker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kickers/1
  # PATCH/PUT /kickers/1.json
  def update
    respond_to do |format|
      if @kicker.update(kicker_params)
        format.html { redirect_to @kicker, notice: 'Kicker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kicker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kickers/1
  # DELETE /kickers/1.json
  def destroy
    @kicker.destroy
    respond_to do |format|
      format.html { redirect_to kickers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kicker
      @kicker = Kicker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kicker_params
      params.require(:kicker).permit(:contact_email, :contact_phone, :dob, :graduation_year, :mug_shot_url, :bio, :gpa, :sat_score, :act_score, :college_credit_count, :height_inches, :weight_pounds, :forty_yd_dash, :bench_press, :vertical_jump, :leg_press)
    end
end
