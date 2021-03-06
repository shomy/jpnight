class GInfosController < ApplicationController


  # GET /g_infos
  # GET /g_infos.json
  def index


  end

  # GET /g_infos/1
  # GET /g_infos/1.json

  def show
    @g_infos = GInfo.all
    @g_info = GInfo.find_by(id: params[:id])

  end


  # GET /g_infos/new
  def new
    @g_infos = GInfo.all
    @g_info = GInfo.new


  end

  # GET /g_infos/1/edit
  def edit
    @g_infos = GInfo.all
    @g_info = GInfo.find(params[:id])
    @g_info.sex = true
  end

  # POST /g_infos
  # POST /g_infos.json
  def create
    validates :age, presence: true,
    numericality: {
      only_integer: true, greater_than_or_equal_to: 20 }
    before_action :set_g_info, only: [:show, :edit, :update, :destroy]

    @g_info = GInfo.new(params.require(:g_info).permit( :name, :tel_number, :age, :sex))

    @g_info.save

    respond_to do |format|
      if @g_info.save
        format.html { redirect_to @g_info, notice: 'Your info was successfully created.' }
        format.json { render :show, status: :created, location: @g_info }
      else
        format.html { render :new }
        format.json { render json: @g_info.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def post_params
    params.require(:post).permit(:content)
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
      @g_infos = GInfo.all
      @g_info = GInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g_info_params
      params.require(:g_info).permit(:user_id, :name, :age, :sex, {picture: []})
    end
end
