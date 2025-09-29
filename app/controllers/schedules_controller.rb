class SchedulesController < ApplicationController
def index
    @schedules = Schedule.all
end

def new
    @schedule = Schedule.new
end

def show
    @schedule = Schedule.find(params[:id])
end

def create
    Schedule.create(schedule_parameter)
    redirect_to schedules_path
end

def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    redirect_to schedules_path, notice:"削除しました"
end

def edit
    @schedule = Schedule.find(params[:id])
end

def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_parameter)
      redirect_to schedules_path, notice: "編集しました"
    else
      render 'edit'
    end
end

before_action :authenticate_user!

def join
    @schedule = Schedule.find(params[:id])
    unless @schedule.users.include?(current_user)
        @schedule.users << current_user
    end
    redirect_to schedules_path, notice: "参加登録しました！"
end

def leave
    @schedule = Schedule.find(params[:id])
    @schedule.users.delete(current_user)
    redirect_to schedules_path, notice: "参加をキャンセルしました。"
end

private

def schedule_parameter
    params.require(:schedule).permit(:title, :about, :start_time)
end

end
