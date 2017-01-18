class CharacterJournalsController < ApplicationController
  before_action :set_character_journal, only: [:show, :edit, :update, :destroy]

  # GET /character_journals
  # GET /character_journals.json
  def index
    @character_journals = CharacterJournal.all
  end

  # GET /character_journals/1
  # GET /character_journals/1.json
  def show
  end

  # GET /character_journals/new
  def new
    @character_journal = CharacterJournal.new
  end

  # GET /character_journals/1/edit
  def edit
  end

  # POST /character_journals
  # POST /character_journals.json
  def create
    @character_journal = CharacterJournal.new(character_journal_params)

    respond_to do |format|
      if @character_journal.save
        format.html { redirect_to @character_journal, notice: 'Character journal was successfully created.' }
        format.json { render :show, status: :created, location: @character_journal }
      else
        format.html { render :new }
        format.json { render json: @character_journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_journals/1
  # PATCH/PUT /character_journals/1.json
  def update
    respond_to do |format|
      if @character_journal.update(character_journal_params)
        format.html { redirect_to @character_journal, notice: 'Character journal was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_journal }
      else
        format.html { render :edit }
        format.json { render json: @character_journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_journals/1
  # DELETE /character_journals/1.json
  def destroy
    @character_journal.destroy
    respond_to do |format|
      format.html { redirect_to character_journals_url, notice: 'Character journal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_journal
      @character_journal = CharacterJournal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_journal_params
      params.require(:character_journal).permit(:current_level, :current_exp, :idactive, :inc_date, :character_sheet_id, :alignment_id)
    end
end
