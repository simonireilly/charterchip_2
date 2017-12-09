class EvidencesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_evidence, only: [:show, :edit, :update, :destroy]

  # GET /evidences
  # GET /evidences.json
  def index
    @evidences = current_user.evidences.all
  end

  # GET /evidences/1
  # GET /evidences/1.json
  def show

  end

  # GET /evidences/new
  def new
    @evidence = current_user.evidences.new
  end

  # GET /evidences/1/edit
  def edit
  end

  # POST /evidences
  # POST /evidences.json
  def create
    @evidence = current_user.evidences.new(evidence_params)

    respond_to do |format|
      if @evidence.save
        format.html { redirect_to evidences_url, notice: 'Evidence was successfully created.' }
        format.json { render :show, status: :created, location: @evidence }
      else
        format.html { render :new }
        format.json { render json: @evidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evidences/1
  # PATCH/PUT /evidences/1.json
  def update
    respond_to do |format|
      if @evidence.update(evidence_params)
        format.html { redirect_to evidences_url, notice: 'Evidence was successfully updated.' }
        format.json { render :show, status: :ok, location: @evidence }
      else
        format.html { render :edit }
        format.json { render json: @evidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evidences/1
  # DELETE /evidences/1.json
  def destroy
    @evidence.destroy
    respond_to do |format|
      format.html { redirect_to evidences_url, notice: 'Evidence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evidence
      @evidence = current_user.evidences.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evidence_params
      params.require(:evidence).permit(:competency, :level, :title, :summary, :report, :start_date, :end_date)
    end
end
