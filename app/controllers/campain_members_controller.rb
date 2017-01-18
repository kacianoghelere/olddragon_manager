class CampainMembersController < ApplicationController
  before_action :set_campain_member, only: [:show, :edit, :update, :destroy]

  # GET /campain_members
  # GET /campain_members.json
  def index
    @campain_members = CampainMember.all
  end

  # GET /campain_members/1
  # GET /campain_members/1.json
  def show
  end

  # GET /campain_members/new
  def new
    @campain_member = CampainMember.new
  end

  # GET /campain_members/1/edit
  def edit
  end

  # POST /campain_members
  # POST /campain_members.json
  def create
    @campain_member = CampainMember.new(campain_member_params)

    respond_to do |format|
      if @campain_member.save
        format.html { redirect_to @campain_member, notice: 'Campain member was successfully created.' }
        format.json { render :show, status: :created, location: @campain_member }
      else
        format.html { render :new }
        format.json { render json: @campain_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campain_members/1
  # PATCH/PUT /campain_members/1.json
  def update
    respond_to do |format|
      if @campain_member.update(campain_member_params)
        format.html { redirect_to @campain_member, notice: 'Campain member was successfully updated.' }
        format.json { render :show, status: :ok, location: @campain_member }
      else
        format.html { render :edit }
        format.json { render json: @campain_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campain_members/1
  # DELETE /campain_members/1.json
  def destroy
    @campain_member.destroy
    respond_to do |format|
      format.html { redirect_to campain_members_url, notice: 'Campain member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campain_member
      @campain_member = CampainMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campain_member_params
      params.require(:campain_member).permit(:campain_id, :character_sheet_id, :idactive)
    end
end
