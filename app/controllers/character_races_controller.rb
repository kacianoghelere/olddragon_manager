class CharacterRacesController < ApplicationController
  before_action :set_character_race, only: [:show, :edit, :update, :destroy]

  # GET /character_races
  # GET /character_races.json
  def index
    @character_races = CharacterRace.all
  end

  # GET /character_races/1
  # GET /character_races/1.json
  def show
  end

  # GET /character_races/new
  def new
    @character_race = CharacterRace.new
  end

  # GET /character_races/1/edit
  def edit
  end

  # POST /character_races
  # POST /character_races.json
  def create
    @character_race = CharacterRace.new(character_race_params)

    respond_to do |format|
      if @character_race.save
        format.html { redirect_to @character_race, notice: 'Character race was successfully created.' }
        format.json { render :show, status: :created, location: @character_race }
      else
        format.html { render :new }
        format.json { render json: @character_race.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_races/1
  # PATCH/PUT /character_races/1.json
  def update
    respond_to do |format|
      if @character_race.update(character_race_params)
        format.html { redirect_to @character_race, notice: 'Character race was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_race }
      else
        format.html { render :edit }
        format.json { render json: @character_race.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_races/1
  # DELETE /character_races/1.json
  def destroy
    @character_race.destroy
    respond_to do |format|
      format.html { redirect_to character_races_url, notice: 'Character race was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_race
      @character_race = CharacterRace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_race_params
      params.require(:character_race).permit(:name, :min_height, :max_height, :min_weight, :max_weight, :maturity, :max_age, :movement_base, :armor_class_mod, :str_mod, :dex_mod, :cons_mod, :int_mod, :wis_mod, :char_mod, :alignment_id, :dice_id, :user_id)
    end
end
