class CharacterRacePerksController < ApplicationController
  before_action :set_character_race_perk, only: [:show, :edit, :update, :destroy]

  # GET /character_race_perks
  # GET /character_race_perks.json
  def index
    @character_race_perks = CharacterRacePerk.all
  end

  # GET /character_race_perks/1
  # GET /character_race_perks/1.json
  def show
  end

  # GET /character_race_perks/new
  def new
    @character_race_perk = CharacterRacePerk.new
  end

  # GET /character_race_perks/1/edit
  def edit
  end

  # POST /character_race_perks
  # POST /character_race_perks.json
  def create
    @character_race_perk = CharacterRacePerk.new(character_race_perk_params)

    respond_to do |format|
      if @character_race_perk.save
        format.html { redirect_to @character_race_perk, notice: 'Character race perk was successfully created.' }
        format.json { render :show, status: :created, location: @character_race_perk }
      else
        format.html { render :new }
        format.json { render json: @character_race_perk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_race_perks/1
  # PATCH/PUT /character_race_perks/1.json
  def update
    respond_to do |format|
      if @character_race_perk.update(character_race_perk_params)
        format.html { redirect_to @character_race_perk, notice: 'Character race perk was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_race_perk }
      else
        format.html { render :edit }
        format.json { render json: @character_race_perk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_race_perks/1
  # DELETE /character_race_perks/1.json
  def destroy
    @character_race_perk.destroy
    respond_to do |format|
      format.html { redirect_to character_race_perks_url, notice: 'Character race perk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_race_perk
      @character_race_perk = CharacterRacePerk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_race_perk_params
      params.require(:character_race_perk).permit(:character_race_id, :perk_id)
    end
end
