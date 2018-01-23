class WafflesController < ApplicationController
  before_action :set_waffle, only: [:show, :edit, :update, :destroy]

  # GET /waffles
  # GET /waffles.json
  def index
    @waffles = Waffle.all
  end

  # GET /waffles/1
  # GET /waffles/1.json
  def show
  end

  # GET /waffles/new
  def new
    @waffle = Waffle.new
  end

  # GET /waffles/1/edit
  def edit
  end

  # POST /waffles
  # POST /waffles.json
  def create
    @waffle = Waffle.new(waffle_params)

    respond_to do |format|
      if @waffle.save
        format.html { redirect_to @waffle, notice: 'Waffle was successfully created.' }
        format.json { render :show, status: :created, location: @waffle }
      else
        format.html { render :new }
        format.json { render json: @waffle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waffles/1
  # PATCH/PUT /waffles/1.json
  def update
    respond_to do |format|
      if @waffle.update(waffle_params)
        format.html { redirect_to @waffle, notice: 'Waffle was successfully updated.' }
        format.json { render :show, status: :ok, location: @waffle }
      else
        format.html { render :edit }
        format.json { render json: @waffle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waffles/1
  # DELETE /waffles/1.json
  def destroy
    @waffle.destroy
    respond_to do |format|
      format.html { redirect_to waffles_url, notice: 'Waffle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waffle
      @waffle = Waffle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def waffle_params
      params.require(:waffle).permit(:body)
    end
end
