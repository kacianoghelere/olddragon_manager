class ThiefTalentsController < ApplicationController
  before_action :set_thief_talent, only: [:show, :edit, :update, :destroy]

  # GET /thief_talents
  # GET /thief_talents.json
  def index
    @thief_talents = ThiefTalent.all
  end

  # GET /thief_talents/1
  # GET /thief_talents/1.json
  def show
  end

  # GET /thief_talents/new
  def new
    @thief_talent = ThiefTalent.new
  end

  # GET /thief_talents/1/edit
  def edit
  end

  # POST /thief_talents
  # POST /thief_talents.json
  def create
    @thief_talent = ThiefTalent.new(thief_talent_params)

    respond_to do |format|
      if @thief_talent.save
        format.html { redirect_to @thief_talent, notice: 'Thief talent was successfully created.' }
        format.json { render :show, status: :created, location: @thief_talent }
      else
        format.html { render :new }
        format.json { render json: @thief_talent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thief_talents/1
  # PATCH/PUT /thief_talents/1.json
  def update
    respond_to do |format|
      if @thief_talent.update(thief_talent_params)
        format.html { redirect_to @thief_talent, notice: 'Thief talent was successfully updated.' }
        format.json { render :show, status: :ok, location: @thief_talent }
      else
        format.html { render :edit }
        format.json { render json: @thief_talent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thief_talents/1
  # DELETE /thief_talents/1.json
  def destroy
    @thief_talent.destroy
    respond_to do |format|
      format.html { redirect_to thief_talents_url, notice: 'Thief talent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thief_talent
      @thief_talent = ThiefTalent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thief_talent_params
      params.require(:thief_talent).permit(:level, :lockpick, :find_traps, :climb, :silent_movement, :stealth, :pickpocket, :hear_noises, :backstab)
    end
end
