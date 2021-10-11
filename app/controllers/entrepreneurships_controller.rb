class EntrepreneurshipsController < ApplicationController
  before_action :set_entrepreneurship, only: %i[ show edit update destroy ]

  # GET /entrepreneurships or /entrepreneurships.json
  def index
    @entrepreneurships = Entrepreneurship.all
  end

  # GET /entrepreneurships/1 or /entrepreneurships/1.json
  def show
  end

  # GET /entrepreneurships/new
  def new
    @entrepreneurship = Entrepreneurship.new
  end

  # GET /entrepreneurships/1/edit
  def edit
  end

  # POST /entrepreneurships or /entrepreneurships.json
  def create
    @entrepreneurship = Entrepreneurship.new(entrepreneurship_params)

    respond_to do |format|
      if @entrepreneurship.save
        format.html { redirect_to @entrepreneurship, notice: "Entrepreneurship was successfully created." }
        format.json { render :show, status: :created, location: @entrepreneurship }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entrepreneurship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entrepreneurships/1 or /entrepreneurships/1.json
  def update
    respond_to do |format|
      if @entrepreneurship.update(entrepreneurship_params)
        format.html { redirect_to @entrepreneurship, notice: "Entrepreneurship was successfully updated." }
        format.json { render :show, status: :ok, location: @entrepreneurship }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entrepreneurship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entrepreneurships/1 or /entrepreneurships/1.json
  def destroy
    @entrepreneurship.destroy
    respond_to do |format|
      format.html { redirect_to entrepreneurships_url, notice: "Entrepreneurship was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entrepreneurship
      @entrepreneurship = Entrepreneurship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entrepreneurship_params
      params.require(:entrepreneurship).permit(:name, :last_name, :email, :password, :pyme_name, :street, :number)
    end
end
