class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy]

  # GET /clubs
  # GET /clubs.json
  def index
    @clubs = Club.all
  end

  # GET /clubs/1
  # GET /clubs/1.json
  def show
  end

  # GET /clubs/new
  def new
    @club = Club.new
  end

  # GET /clubs/1/edit
  def edit
  end

  # POST /clubs
  # POST /clubs.json
  def create
    @club = Club.new(club_params)

    respond_to do |format|
      if @club.save
        format.html { redirect_to @club, notice: 'Club was successfully created.' }
        format.json { render :show, status: :created, location: @club }
      else
        format.html { render :new }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clubs/1
  # PATCH/PUT /clubs/1.json
  def update
    respond_to do |format|
      if @club.update(club_params)
        format.html { redirect_to @club, notice: 'Club was successfully updated.' }
        format.json { render :show, status: :ok, location: @club }
      else
        format.html { render :edit }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clubs/1
  # DELETE /clubs/1.json
  def destroy
    @club.destroy
    respond_to do |format|
      format.html { redirect_to clubs_url, notice: 'Club was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  # AJAX
  def select_update
    club_nr = params[:ClubID]
    #club = Club.find(club_nr)

    #if pass == pedido.password or pedido.password == nil
    #  cookies.signed[:pedido_id] = ped_nr
    #  redirect_to root_path
    #else
      #return render json: club.to_json
    #@fields = Field.find_by(club_id: club_nr)
    @fields = Field.all.where(club_id: club_nr)
    Rails.logger.debug @fields
      #render "view", :clubs => @clubs
    #end
    respond_to do |format|
      format.json { render json: @fields }
    end
    #format.json { render json: 'hola'.to_json}

    #redirect_to root_path
    #respond_to do |format|
    #  format.json { render json: 'hola'.to_json}
    #end
    #return render json: 1.to_json;
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club
      @club = Club.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_params
      params.require(:club).permit(:name, :address, :url)
    end
end
