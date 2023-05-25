class StudentOmegasController < ApplicationController
  before_action :set_student_omega, only: %i[ show edit update destroy ]

  # GET /student_omegas or /student_omegas.json
  def index
    @student_omegas = StudentOmega.all
  end

  # GET /student_omegas/1 or /student_omegas/1.json
  def show
  end

  # GET /student_omegas/new
  def new
    @student_omega = StudentOmega.new
  end

  # GET /student_omegas/1/edit
  def edit
  end

  # POST /student_omegas or /student_omegas.json
  def create
    @student_omega = StudentOmega.new(student_omega_params)

    respond_to do |format|
      if @student_omega.save
        format.html { redirect_to student_omega_url(@student_omega), notice: "Student omega was successfully created." }
        format.json { render :show, status: :created, location: @student_omega }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student_omega.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_omegas/1 or /student_omegas/1.json
  def update
    respond_to do |format|
      if @student_omega.update(student_omega_params)
        format.html { redirect_to student_omega_url(@student_omega), notice: "Student omega was successfully updated." }
        format.json { render :show, status: :ok, location: @student_omega }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_omega.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_omegas/1 or /student_omegas/1.json
  def destroy
    @student_omega.destroy

    respond_to do |format|
      format.html { redirect_to student_omegas_url, notice: "Student omega was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_omega
      @student_omega = StudentOmega.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_omega_params
      params.require(:student_omega).permit(:first_name, :last_name, :email, :phone, :year, :hometown, :high_school, :instagram, :snapchat, :highschool_activities)
    end
end
