class SpiesController < ApplicationController
  before_action :set_spy, only: %i[ show edit update destroy ]

  # GET /spies or /spies.json
  def index
    @spies = Spy.all
  end

  # GET /spies/1 or /spies/1.json
  def show
  end

  # GET /spies/new
  def new
    @spy = Spy.new
  end

  # GET /spies/1/edit
  def edit
  end

  # POST /spies or /spies.json
  def create
    @spy = Spy.new(spy_params)

    respond_to do |format|
      if @spy.save
        format.html { redirect_to @spy, notice: "Spy was successfully created." }
        format.json { render :show, status: :created, location: @spy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @spy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spies/1 or /spies/1.json
  def update
    respond_to do |format|
      if @spy.update(spy_params)
        format.html { redirect_to @spy, notice: "Spy was successfully updated." }
        format.json { render :show, status: :ok, location: @spy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @spy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spies/1 or /spies/1.json
  def destroy
    @spy.destroy
    respond_to do |format|
      format.html { redirect_to spies_url, notice: "Spy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spy
      @spy = Spy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spy_params
      params.require(:spy).permit(:name, :mission)
    end
end
