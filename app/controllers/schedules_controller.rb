class SchedulesController < ApplicationController
  before_action :set_schedule, only: %i[ show edit update destroy ]

  # GET /schedules or /schedules.json
  def index
    @schedules = Schedule.all
  end

  # GET /schedules/1 or /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules or /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)

    if @schedule.save
      redirect_to schedules_path, notice: "スケジュールを正常に登録しました。"
    else
      flash.now[:alert] = "スケジュールの登録に失敗しました。入力内容を確認してください。"
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /schedules/1 or /schedules/1.json
  def update
    if @schedule.update(schedule_params)
      redirect_to schedules_path, notice: "スケジュールを正常に更新しました。"
    else
      flash.now[:alert] = "スケジュールの更新に失敗しました。入力内容を確認してください。"
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /schedules/1 or /schedules/1.json
  def destroy
    @schedule.destroy!

    respond_to do |format|
      format.html { redirect_to schedules_path, notice: "スケジュールを正常に削除しました。", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schedule_params
      params.require(:schedule).permit(:title, :start_date, :end_date, :is_all_day, :memo)
    end
end
