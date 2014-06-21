class DudsController < ApplicationController
  before_action :set_dud, only: [:show, :edit, :update, :destroy]
  geocode_ip_address

  # GET /duds
  # GET /duds.json
  def index
    @duds = Dud.all
  end

  # GET /duds/1
  # GET /duds/1.json
  def show
  end

  # GET /duds/new
  def new
    @dud = Dud.new
  end

  # GET /duds/1/edit
  def edit
  end

  # POST /duds
  # POST /duds.json
  def create
    @dud = current_user.duds.new(dud_params)

    respond_to do |format|
      if @dud.save
        format.html { redirect_to @dud, notice: 'dud was successfully created.' }
        format.json { render :show, status: :created, location: @dud }
      else
        format.html { render :new }
        format.json { render json: @dud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /duds/1
  # PATCH/PUT /duds/1.json
  def update
    respond_to do |format|
      if @dud.update(dud_params)
        format.html { redirect_to root_path, notice: 'dud was successfully updated.' }
        format.json { render :show, status: :ok, location: @dud }
      else
        format.html { render :edit }
        format.json { render json: @dud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duds/1
  # DELETE /duds/1.json
  def destroy
    @dud.destroy
    respond_to do |format|
      format.html { redirect_to duds_url, notice: 'dud was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search
    if request.post?
      @duds = Dud.where params[:dud].delete_if{|key, value| value.blank? }
      render action: :index
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dud
      @dud = Dud.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dud_params
       params.require(:dud).permit!
    end
end