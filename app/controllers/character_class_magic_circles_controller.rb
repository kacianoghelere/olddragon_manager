class CharacterClassMagicCirclesController < ApplicationController
  before_action :set_character_class_magic_circle, only: [:show, :edit, :update, :destroy]

  # GET /character_class_magic_circles
  # GET /character_class_magic_circles.json
  def index
    @character_class_magic_circles = CharacterClassMagicCircle.all
  end

  # GET /character_class_magic_circles/1
  # GET /character_class_magic_circles/1.json
  def show
  end

  # GET /character_class_magic_circles/new
  def new
    @character_class_magic_circle = CharacterClassMagicCircle.new
  end

  # GET /character_class_magic_circles/1/edit
  def edit
  end

  # POST /character_class_magic_circles
  # POST /character_class_magic_circles.json
  def create
    @character_class_magic_circle = CharacterClassMagicCircle.new(character_class_magic_circle_params)

    respond_to do |format|
      if @character_class_magic_circle.save
        format.html { redirect_to @character_class_magic_circle, notice: 'Character class magic circle was successfully created.' }
        format.json { render :show, status: :created, location: @character_class_magic_circle }
      else
        format.html { render :new }
        format.json { render json: @character_class_magic_circle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_class_magic_circles/1
  # PATCH/PUT /character_class_magic_circles/1.json
  def update
    respond_to do |format|
      if @character_class_magic_circle.update(character_class_magic_circle_params)
        format.html { redirect_to @character_class_magic_circle, notice: 'Character class magic circle was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_class_magic_circle }
      else
        format.html { render :edit }
        format.json { render json: @character_class_magic_circle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_class_magic_circles/1
  # DELETE /character_class_magic_circles/1.json
  def destroy
    @character_class_magic_circle.destroy
    respond_to do |format|
      format.html { redirect_to character_class_magic_circles_url, notice: 'Character class magic circle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_class_magic_circle
      @character_class_magic_circle = CharacterClassMagicCircle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_class_magic_circle_params
      params.require(:character_class_magic_circle).permit(:level, :magic_circle_1, :magic_circle_2, :magic_circle_3, :magic_circle_4, :magic_circle_5, :magic_circle_6, :magic_circle_7, :magic_circle_8, :magic_circle_9, :character_class_id)
    end
end
