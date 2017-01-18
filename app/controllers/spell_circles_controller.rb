class SpellCirclesController < ApplicationController
  before_action :set_spell_circle, only: [:show, :edit, :update, :destroy]

  # GET /spell_circles
  # GET /spell_circles.json
  def index
    @spell_circles = SpellCircle.all
  end

  # GET /spell_circles/1
  # GET /spell_circles/1.json
  def show
  end

  # GET /spell_circles/new
  def new
    @spell_circle = SpellCircle.new
  end

  # GET /spell_circles/1/edit
  def edit
  end

  # POST /spell_circles
  # POST /spell_circles.json
  def create
    @spell_circle = SpellCircle.new(spell_circle_params)

    respond_to do |format|
      if @spell_circle.save
        format.html { redirect_to @spell_circle, notice: 'Spell circle was successfully created.' }
        format.json { render :show, status: :created, location: @spell_circle }
      else
        format.html { render :new }
        format.json { render json: @spell_circle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spell_circles/1
  # PATCH/PUT /spell_circles/1.json
  def update
    respond_to do |format|
      if @spell_circle.update(spell_circle_params)
        format.html { redirect_to @spell_circle, notice: 'Spell circle was successfully updated.' }
        format.json { render :show, status: :ok, location: @spell_circle }
      else
        format.html { render :edit }
        format.json { render json: @spell_circle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spell_circles/1
  # DELETE /spell_circles/1.json
  def destroy
    @spell_circle.destroy
    respond_to do |format|
      format.html { redirect_to spell_circles_url, notice: 'Spell circle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spell_circle
      @spell_circle = SpellCircle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spell_circle_params
      params.require(:spell_circle).permit(:circle, :spell_type_id)
    end
end
