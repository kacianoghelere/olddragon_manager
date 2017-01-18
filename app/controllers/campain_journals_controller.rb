class CampainJournalsController < ApplicationController
  before_action :set_campain_journal, only: [:show, :edit, :update, :destroy]

  # GET /campain_journals
  # GET /campain_journals.json
  def index
    @campain_journals = CampainJournal.all
  end

  # GET /campain_journals/1
  # GET /campain_journals/1.json
  def show
  end

  # GET /campain_journals/new
  def new
    @campain_journal = CampainJournal.new
  end

  # GET /campain_journals/1/edit
  def edit
  end

  # POST /campain_journals
  # POST /campain_journals.json
  def create
    @campain_journal = CampainJournal.new(campain_journal_params)

    respond_to do |format|
      if @campain_journal.save
        format.html { redirect_to @campain_journal, notice: 'Campain journal was successfully created.' }
        format.json { render :show, status: :created, location: @campain_journal }
      else
        format.html { render :new }
        format.json { render json: @campain_journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campain_journals/1
  # PATCH/PUT /campain_journals/1.json
  def update
    respond_to do |format|
      if @campain_journal.update(campain_journal_params)
        format.html { redirect_to @campain_journal, notice: 'Campain journal was successfully updated.' }
        format.json { render :show, status: :ok, location: @campain_journal }
      else
        format.html { render :edit }
        format.json { render json: @campain_journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campain_journals/1
  # DELETE /campain_journals/1.json
  def destroy
    @campain_journal.destroy
    respond_to do |format|
      format.html { redirect_to campain_journals_url, notice: 'Campain journal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campain_journal
      @campain_journal = CampainJournal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campain_journal_params
      params.require(:campain_journal).permit(:description, :idactive, :log_date, :campain_id)
    end
end
