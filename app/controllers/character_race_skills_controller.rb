class CharacterRaceSkillsController < ApplicationController
  before_action :set_character_race_skill, only: [:show, :edit, :update, :destroy]

  # GET /character_race_skills
  # GET /character_race_skills.json
  def index
    @character_race_skills = CharacterRaceSkill.all
  end

  # GET /character_race_skills/1
  # GET /character_race_skills/1.json
  def show
  end

  # GET /character_race_skills/new
  def new
    @character_race_skill = CharacterRaceSkill.new
  end

  # GET /character_race_skills/1/edit
  def edit
  end

  # POST /character_race_skills
  # POST /character_race_skills.json
  def create
    @character_race_skill = CharacterRaceSkill.new(character_race_skill_params)

    respond_to do |format|
      if @character_race_skill.save
        format.html { redirect_to @character_race_skill, notice: 'Character race skill was successfully created.' }
        format.json { render :show, status: :created, location: @character_race_skill }
      else
        format.html { render :new }
        format.json { render json: @character_race_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_race_skills/1
  # PATCH/PUT /character_race_skills/1.json
  def update
    respond_to do |format|
      if @character_race_skill.update(character_race_skill_params)
        format.html { redirect_to @character_race_skill, notice: 'Character race skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_race_skill }
      else
        format.html { render :edit }
        format.json { render json: @character_race_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_race_skills/1
  # DELETE /character_race_skills/1.json
  def destroy
    @character_race_skill.destroy
    respond_to do |format|
      format.html { redirect_to character_race_skills_url, notice: 'Character race skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_race_skill
      @character_race_skill = CharacterRaceSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_race_skill_params
      params.require(:character_race_skill).permit(:character_race_id, :skill_id)
    end
end
