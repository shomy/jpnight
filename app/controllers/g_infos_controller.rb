class GInfosController < ApplicationController
  before_action :set_g_info, only: [:show, :edit, :update, :destroy]

  # GET /g_infos
  # GET /g_infos.json
  def index
    @g_infos = GInfo.all

  end

  # GET /g_infos/1
  # GET /g_infos/1.json
  def show

    @g_info = GInfo.find(params[:id])

  end

  # GET /g_infos/new
  def new
    @g_info = GInfo.new
  end

  # GET /g_infos/1/edit
  def edit

    @g_info = GInfo.find(params[:id])


  end

  # POST /g_infos
  # POST /g_infos.json
  def create
    @g_info = GInfo.new(params.require(:g_info).permit(:email, :password, :name, :number, :age, :sex))
    @g_info.save

    respond_to do |format|
      if @g_info.save
        format.html { redirect_to @g_info, notice: 'G info was successfully created.' }
        format.json { render :show, status: :created, location: @g_info }
      else
        format.html { render :new }
        format.json { render json: @g_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g_infos/1
  # PATCH/PUT /g_infos/1.json
  def update
    respond_to do |format|
      if @g_info.update(g_info_params)
        format.html { redirect_to @g_info, notice: 'G info was successfully updated.' }
        format.json { render :show, status: :ok, location: @g_info }
      else
        format.html { render :edit }
        format.json { render json: @g_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g_infos/1
  # DELETE /g_infos/1.json
  def destroy
    @g_info.destroy
    respond_to do |format|
      format.html { redirect_to g_infos_url, notice: 'G info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g_info
      @g_info = GInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g_info_params
      params.require(:g_info).permit(:user_id, :name, :age, :sex)
    end
end
