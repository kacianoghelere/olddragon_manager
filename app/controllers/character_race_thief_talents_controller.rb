class CharacterRaceThiefTalentsController < ApplicationController
  before_action :set_character_race_thief_talent, only: [:show, :edit, :update, :destroy]

  # GET /character_race_thief_talents
  # GET /character_race_thief_talents.json
  def index
    @character_race_thief_talents = CharacterRaceThiefTalent.all
  end

  # GET /character_race_thief_talents/1
  # GET /character_race_thief_talents/1.json
  def show
  end

  # GET /character_race_thief_talents/new
  def new
    @character_race_thief_talent = CharacterRaceThiefTalent.new
  end

  # GET /character_race_thief_talents/1/edit
  def edit
  end

  # POST /character_race_thief_talents
  # POST /character_race_thief_talents.json
  def create
    @character_race_thief_talent = CharacterRaceThiefTalent.new(character_race_thief_talent_params)

    respond_to do |format|
      if @character_race_thief_talent.save
        format.html { redirect_to @character_race_thief_talent, notice: 'Character race thief talent was successfully created.' }
        format.json { render :show, status: :created, location: @character_race_thief_talent }
      else
        format.html { render :new }
        format.json { render json: @character_race_thief_talent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_race_thief_talents/1
  # PATCH/PUT /character_race_thief_talents/1.json
  def update
    respond_to do |format|
      if @character_race_thief_talent.update(character_race_thief_talent_params)
        format.html { redirect_to @character_race_thief_talent, notice: 'Character race thief talent was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_race_thief_talent }
      else
        format.html { render :edit }
        format.json { render json: @character_race_thief_talent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_race_thief_talents/1
  # DELETE /character_race_thief_talents/1.json
  def destroy
    @character_race_thief_talent.destroy
    respond_to do |format|
      format.html { redirect_to character_race_thief_talents_url, notice: 'Character race thief talent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_race_thief_talent
      @character_race_thief_talent = CharacterRaceThiefTalent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_race_thief_talent_params
      params.require(:character_race_thief_talent).permit(:id, :lockpick_mod, :find_traps_mod, :climb_mod, :silent_movement_mod, :stealth_mod, :pickpocket_mod, :hear_noises_mod, :backstab_mod, :character_race_id)
    end
end
