class RoleAccessesController < ApplicationController
  before_action :set_role_access, only: [:show, :edit, :update, :destroy]

  # GET /role_accesses
  # GET /role_accesses.json
  def index
    @role_accesses = RoleAccess.all
  end

  # GET /role_accesses/1
  # GET /role_accesses/1.json
  def show
  end

  # GET /role_accesses/new
  def new
    @role_access = RoleAccess.new
  end

  # GET /role_accesses/1/edit
  def edit
  end

  # POST /role_accesses
  # POST /role_accesses.json
  def create
    @role_access = RoleAccess.new(role_access_params)

    respond_to do |format|
      if @role_access.save
        format.html { redirect_to @role_access, notice: 'Role access was successfully created.' }
        format.json { render :show, status: :created, location: @role_access }
      else
        format.html { render :new }
        format.json { render json: @role_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /role_accesses/1
  # PATCH/PUT /role_accesses/1.json
  def update
    respond_to do |format|
      if @role_access.update(role_access_params)
        format.html { redirect_to @role_access, notice: 'Role access was successfully updated.' }
        format.json { render :show, status: :ok, location: @role_access }
      else
        format.html { render :edit }
        format.json { render json: @role_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /role_accesses/1
  # DELETE /role_accesses/1.json
  def destroy
    @role_access.destroy
    respond_to do |format|
      format.html { redirect_to role_accesses_url, notice: 'Role access was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role_access
      @role_access = RoleAccess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def role_access_params
      params.require(:role_access).permit(:id_menu_item, :role_id)
    end
end
