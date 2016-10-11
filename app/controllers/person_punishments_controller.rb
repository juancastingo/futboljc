class PersonPunishmentsController < ApplicationController
  before_action :set_person_punishment, only: [:show, :edit, :update, :destroy]

  # GET /person_punishments
  # GET /person_punishments.json
  def index
    @person_punishments = PersonPunishment.all
  end

  # GET /person_punishments/1
  # GET /person_punishments/1.json
  def show
  end

  # GET /person_punishments/new
  def new
    @person_punishment = PersonPunishment.new
  end

  # GET /person_punishments/1/edit
  def edit
  end

  # POST /person_punishments
  # POST /person_punishments.json
  def create
    @person_punishment = PersonPunishment.new(person_punishment_params)

    respond_to do |format|
      if @person_punishment.save
        format.html { redirect_to @person_punishment, notice: 'Person punishment was successfully created.' }
        format.json { render :show, status: :created, location: @person_punishment }
      else
        format.html { render :new }
        format.json { render json: @person_punishment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_punishments/1
  # PATCH/PUT /person_punishments/1.json
  def update
    respond_to do |format|
      if @person_punishment.update(person_punishment_params)
        format.html { redirect_to @person_punishment, notice: 'Person punishment was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_punishment }
      else
        format.html { render :edit }
        format.json { render json: @person_punishment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_punishments/1
  # DELETE /person_punishments/1.json
  def destroy
    @person_punishment.destroy
    respond_to do |format|
      format.html { redirect_to person_punishments_url, notice: 'Person punishment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_punishment
      @person_punishment = PersonPunishment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_punishment_params
      params.require(:person_punishment).permit(:punishment_id, :person_id)
    end
end
