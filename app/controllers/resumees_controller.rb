class ResumeesController < ApplicationController
  before_action :set_resumee, only: [:show, :edit, :update, :destroy]

  # GET /resumees
  # GET /resumees.json
  def index
    @resumees = Resumee.all
  end

  # GET /resumees/1
  # GET /resumees/1.json
  def show
  end

  # GET /resumees/new
  def new
    @resumee = Resumee.new
  end

  # GET /resumees/1/edit
  def edit
  end

  # POST /resumees
  # POST /resumees.json
  def create
    @resumee = Resumee.new(resumee_params)

    respond_to do |format|
      if @resumee.save
        format.html { redirect_to @resumee, notice: 'Resumee was successfully created.' }
        format.json { render :show, status: :created, location: @resumee }
      else
        format.html { render :new }
        format.json { render json: @resumee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resumees/1
  # PATCH/PUT /resumees/1.json
  def update
    respond_to do |format|
      if @resumee.update(resumee_params)
        format.html { redirect_to @resumee, notice: 'Resumee was successfully updated.' }
        format.json { render :show, status: :ok, location: @resumee }
      else
        format.html { render :edit }
        format.json { render json: @resumee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resumees/1
  # DELETE /resumees/1.json
  def destroy
    @resumee.destroy
    respond_to do |format|
      format.html { redirect_to resumees_url, notice: 'Resumee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resumee
      @resumee = Resumee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resumee_params
      params.require(:resumee).permit(:name, :email, :dob, :address, :phone, :gender, :qualification, :experience, :projects, :hobbies, :known_programming_languages)
    end
end
