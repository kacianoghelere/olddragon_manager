class UndeadBanesController < ApplicationController
  before_action :set_undead_bane, only: [:show, :edit, :update, :destroy]

  # GET /undead_banes
  # GET /undead_banes.json
  def index
    @undead_banes = UndeadBane.all
  end

  # GET /undead_banes/1
  # GET /undead_banes/1.json
  def show
  end

  # GET /undead_banes/new
  def new
    @undead_bane = UndeadBane.new
  end

  # GET /undead_banes/1/edit
  def edit
  end

  # POST /undead_banes
  # POST /undead_banes.json
  def create
    @undead_bane = UndeadBane.new(undead_bane_params)

    respond_to do |format|
      if @undead_bane.save
        format.html { redirect_to @undead_bane, notice: 'Undead bane was successfully created.' }
        format.json { render :show, status: :created, location: @undead_bane }
      else
        format.html { render :new }
        format.json { render json: @undead_bane.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /undead_banes/1
  # PATCH/PUT /undead_banes/1.json
  def update
    respond_to do |format|
      if @undead_bane.update(undead_bane_params)
        format.html { redirect_to @undead_bane, notice: 'Undead bane was successfully updated.' }
        format.json { render :show, status: :ok, location: @undead_bane }
      else
        format.html { render :edit }
        format.json { render json: @undead_bane.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /undead_banes/1
  # DELETE /undead_banes/1.json
  def destroy
    @undead_bane.destroy
    respond_to do |format|
      format.html { redirect_to undead_banes_url, notice: 'Undead bane was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_undead_bane
      @undead_bane = UndeadBane.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def undead_bane_params
      params.require(:undead_bane).permit(:level, :skelleton_mod, :zombie_mod, :ghoul_mod, :inhuman_mod, :aparition_mod, :mummy_mod, :specter_mod, :vampire_mod)
    end
end
