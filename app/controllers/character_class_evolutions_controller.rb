class CharacterClassEvolutionsController < ApplicationController
  before_action :set_character_class_evolution, only: [:show, :edit, :update, :destroy]

  # GET /character_class_evolutions
  # GET /character_class_evolutions.json
  def index
    @character_class_evolutions = CharacterClassEvolution.all
  end

  # GET /character_class_evolutions/1
  # GET /character_class_evolutions/1.json
  def show
  end

  # GET /character_class_evolutions/new
  def new
    @character_class_evolution = CharacterClassEvolution.new
  end

  # GET /character_class_evolutions/1/edit
  def edit
  end

  # POST /character_class_evolutions
  # POST /character_class_evolutions.json
  def create
    @character_class_evolution = CharacterClassEvolution.new(character_class_evolution_params)

    respond_to do |format|
      if @character_class_evolution.save
        format.html { redirect_to @character_class_evolution, notice: 'Character class evolution was successfully created.' }
        format.json { render :show, status: :created, location: @character_class_evolution }
      else
        format.html { render :new }
        format.json { render json: @character_class_evolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_class_evolutions/1
  # PATCH/PUT /character_class_evolutions/1.json
  def update
    respond_to do |format|
      if @character_class_evolution.update(character_class_evolution_params)
        format.html { redirect_to @character_class_evolution, notice: 'Character class evolution was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_class_evolution }
      else
        format.html { render :edit }
        format.json { render json: @character_class_evolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_class_evolutions/1
  # DELETE /character_class_evolutions/1.json
  def destroy
    @character_class_evolution.destroy
    respond_to do |format|
      format.html { redirect_to character_class_evolutions_url, notice: 'Character class evolution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_class_evolution
      @character_class_evolution = CharacterClassEvolution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_class_evolution_params
      params.require(:character_class_evolution).permit(:level, :exp, :life_amount, :plus_life, :attack_base, :attack_base2, :protection_mod, :character_class_id)
    end
end
