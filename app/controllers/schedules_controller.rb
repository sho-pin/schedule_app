class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def new
    @schedule = Schedule.new
  end

  def create 
    @schedule = Schedule.new(schedule_params)

    if @schedule.save
      redirect_to schedules_url, notice: "スケジュール「#{schedule.name}」を登録しました。"
    else
      render :new
    end
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update 
    schedule = Schedule.find(params[:id])
    schedule.update!(schedule_params)
    redirect_to schedules_url, notice: "スケジュール「#{schedule.name}を更新しました。」"
  end

  def destroy 
    schedule = Schedule.find(params[:id])
    schedule.destroy
    redirect_to schedules_url, notice: "スケジュール「#{schedule.name}を削除しました。」"
  end

  private

  def schedule_params
    params.require(:schedule).permit(:name, :description, :start_date, :end_date)
  end
end
