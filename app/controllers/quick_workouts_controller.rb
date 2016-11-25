class QuickWorkoutsController < ApplicationController

  before_action :set_quick_workout, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @quick_workout = QuickWorkout.new
  end

  def create
    @quick_workout = QuickWorkout.new(quick_workout_params)

    respond_to do |format|
      if @quick_workout.save
        format.html { redirect_to quick_workout_path(@quick_workout), notice: "Workout created!" }
        format.json { render :show, status: :created, location: @quick_workout}
      else
        format.html { render :new }
        format.json { render json: @quick_workout.errors, status: :unprocessable_entity}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @quick_workout.update(quick_workout_params)
        format.html { redirect_to quick_workout_path(@quick_workout), notice: "Workout updated" }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @quick_workout.destroy
    respond_to do |format|
      format.html { redirect_to control_center_path, notice: 'Workout deleted.' }
      format.json { head :no_content }
    end
  end

  def random_quick_workout
    random_workout_id = QuickWorkout.all.pluck(:id).sample
    @quick_workout = QuickWorkout.find(random_workout_id)
  end

  private
  def set_quick_workout
    @quick_workout = QuickWorkout.find(params[:id])
  end

  def quick_workout_params
    params.require(:quick_workout).permit(:workout)
  end

end