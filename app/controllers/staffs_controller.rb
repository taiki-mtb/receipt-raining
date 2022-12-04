class StaffsController < ApplicationController
  before_action :set_staff, only: %i[ show edit update destroy ]

  # GET /staffs
  def index
    @staffs = Staff.all
  end

  # GET /staffs/1
  def show
  end

  # GET /staffs/new
  def new
    @staff = Staff.new
  end

  # GET /staffs/1/edit
  def edit
  end

  # POST /staffs
  def create
    @staff = Staff.new(staff_params)

    if @staff.save
      flash.now.notice = "Staff was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /staffs/1
  def update
    if @staff.update(staff_params)
      flash.now.notice = "Staff was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /staffs/1
  def destroy
    @staff.destroy
    flash.now.notice = "Staff was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff
      @staff = Staff.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def staff_params
      params.require(:staff).permit(:name)
    end
end
