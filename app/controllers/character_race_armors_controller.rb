class CharacterRaceArmorsController < ApplicationController
  before_action :set_character_race_armor, only: [:show, :edit, :update, :destroy]

  # GET /character_race_armors
  # GET /character_race_armors.json
  def index
    @character_race_armors = CharacterRaceArmor.all
  end

  # GET /character_race_armors/1
  # GET /character_race_armors/1.json
  def show
  end

  # GET /character_race_armors/new
  def new
    @character_race_armor = CharacterRaceArmor.new
  end

  # GET /character_race_armors/1/edit
  def edit
  end

  # POST /character_race_armors
  # POST /character_race_armors.json
  def create
    @character_race_armor = CharacterRaceArmor.new(character_race_armor_params)

    respond_to do |format|
      if @character_race_armor.save
        format.html { redirect_to @character_race_armor, notice: 'Character race armor was successfully created.' }
        format.json { render :show, status: :created, location: @character_race_armor }
      else
        format.html { render :new }
        format.json { render json: @character_race_armor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_race_armors/1
  # PATCH/PUT /character_race_armors/1.json
  def update
    respond_to do |format|
      if @character_race_armor.update(character_race_armor_params)
        format.html { redirect_to @character_race_armor, notice: 'Character race armor was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_race_armor }
      else
        format.html { render :edit }
        format.json { render json: @character_race_armor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_race_armors/1
  # DELETE /character_race_armors/1.json
  def destroy
    @character_race_armor.destroy
    respond_to do |format|
      format.html { redirect_to character_race_armors_url, notice: 'Character race armor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_race_armor
      @character_race_armor = CharacterRaceArmor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_race_armor_params
      params.require(:character_race_armor).permit(:armor_type_id, :character_race_id)
    end
end
