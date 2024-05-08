class MalopointsController < ApplicationController
  before_action :set_malopoint, only: %i[ show edit update destroy ]

  # GET /malopoints or /malopoints.json
  def index
    @malopoints = Malopoint.all
  end

  # GET /malopoints/1 or /malopoints/1.json
  def show
  end

  # GET /malopoints/new
  def new
    @malopoint = Malopoint.new
  end

  # GET /malopoints/1/edit
  def edit
  end

  # POST /malopoints or /malopoints.json
  def create
    @malopoint = Malopoint.new(malopoint_params)

    respond_to do |format|
      if @malopoint.save
        format.html { redirect_to malopoint_url(@malopoint), notice: "Malopoint was successfully created." }
        format.json { render :show, status: :created, location: @malopoint }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @malopoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /malopoints/1 or /malopoints/1.json
  def update
    respond_to do |format|
      if @malopoint.update(malopoint_params)
        format.html { redirect_to malopoint_url(@malopoint), notice: "Malopoint was successfully updated." }
        format.json { render :show, status: :ok, location: @malopoint }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @malopoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /malopoints/1 or /malopoints/1.json
  def destroy
    @malopoint.destroy!

    respond_to do |format|
      format.html { redirect_to malopoints_url, notice: "Malopoint was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_malopoint
      @malopoint = Malopoint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def malopoint_params
      params.require(:malopoint).permit(:name, :string)
    end
end
