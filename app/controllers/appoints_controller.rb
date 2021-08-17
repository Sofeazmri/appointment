class AppointsController < ApplicationController

  def new
    @appoint = Appoint.new
  end

  def create
    @appoint = Appoint.new(appoint_params)

    respond_to do |format|
      if @appoint.save
        format.html { redirect_to root_path, notice: "Appointment was successfully created." }
        format.json { render :show, status: :created, location: @appoint }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appoint.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_appoint
      @appoint = Appoint.find(params[:id])
    end

    def appoint_params
      params.require(:appoint).permit(:name, :matric, :phone, :email, :services, :issue, :datetime)
    end
end
