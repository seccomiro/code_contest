class ClarificationsController < ApplicationController
  before_action :set_clarification, only: [:show, :edit, :update, :destroy]

  # GET /clarifications
  def index
    @clarifications = Clarification.all
  end

  # GET /clarifications/1
  def show
  end

  # GET /clarifications/new
  def new
    @clarification = Clarification.new
  end

  # GET /clarifications/1/edit
  def edit
  end

  # POST /clarifications
  def create
    @clarification = Clarification.new(clarification_params)

    if @clarification.save
      redirect_to @clarification, notice: 'Clarification was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /clarifications/1
  def update
    if @clarification.update(clarification_params)
      redirect_to @clarification, notice: 'Clarification was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /clarifications/1
  def destroy
    @clarification.destroy
    redirect_to clarifications_url, notice: 'Clarification was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clarification
      @clarification = Clarification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clarification_params
      params.require(:clarification).permit(:team_id, :question_id, :judge_id, :question, :answer)
    end
end
