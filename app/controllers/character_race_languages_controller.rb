class CharacterRaceLanguagesController < ApplicationController
  before_action :set_character_race_language, only: [:show, :edit, :update, :destroy]

  # GET /character_race_languages
  # GET /character_race_languages.json
  def index
    @character_race_languages = CharacterRaceLanguage.all
  end

  # GET /character_race_languages/1
  # GET /character_race_languages/1.json
  def show
  end

  # GET /character_race_languages/new
  def new
    @character_race_language = CharacterRaceLanguage.new
  end

  # GET /character_race_languages/1/edit
  def edit
  end

  # POST /character_race_languages
  # POST /character_race_languages.json
  def create
    @character_race_language = CharacterRaceLanguage.new(character_race_language_params)

    respond_to do |format|
      if @character_race_language.save
        format.html { redirect_to @character_race_language, notice: 'Character race language was successfully created.' }
        format.json { render :show, status: :created, location: @character_race_language }
      else
        format.html { render :new }
        format.json { render json: @character_race_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_race_languages/1
  # PATCH/PUT /character_race_languages/1.json
  def update
    respond_to do |format|
      if @character_race_language.update(character_race_language_params)
        format.html { redirect_to @character_race_language, notice: 'Character race language was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_race_language }
      else
        format.html { render :edit }
        format.json { render json: @character_race_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_race_languages/1
  # DELETE /character_race_languages/1.json
  def destroy
    @character_race_language.destroy
    respond_to do |format|
      format.html { redirect_to character_race_languages_url, notice: 'Character race language was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_race_language
      @character_race_language = CharacterRaceLanguage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_race_language_params
      params.require(:character_race_language).permit(:character_race_id, :language_type_id)
    end
end
