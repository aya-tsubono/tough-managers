class CasesController < ApplicationController

  def index
    @cases = Case.all
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.new(case_params)
    if @case.save
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def case_params
    params.require(:case).permit(:date, :state_id, :introducer_id, :introducer_name, :case_name, :age, :address, :household_id,
                                :place_id, :economic_status_id, :care_level_id, :handicap_level, :cost, :location, :medical_condition,
                                :care_condition, :remarks, :move_in_date, :main_fee, :other_fee, :home_name).merge(user_id: current_user.id)
  end

end
