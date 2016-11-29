class MediumWorkoutsController < ApplicationController

  before_action :set_medium_workout, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @medium_workout = MediumWorkout.new
  end

  def create
    @medium_workout = MediumWorkout.new(medium_workout_params)

    respond_to do |format|
      if @medium_workout.save
        format.html { redirect_to medium_workout_path(@medium_workout), notice: "Workout created!" }
        format.json { render :show, status: :created, location: @medium_workout}
      else
        format.html { render :new }
        format.json { render json: @medium_workout.errors, status: :unprocessable_entity}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @medium_workout.update(medium_workout_params)
        format.html { redirect_to medium_workout_path(@medium_workout), notice: "Workout updated" }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @medium_workout.destroy
    respond_to do |format|
      format.html { redirect_to control_center_path, notice: 'Workout deleted.' }
      format.json { head :no_content }
    end
  end

  def random_medium_workout
    random_workout_id = MediumWorkout.all.pluck(:id).sample
    @medium_workout = MediumWorkout.find(random_workout_id)
  end

  private
  def set_medium_workout
    @medium_workout = MediumWorkout.find(params[:id])
  end

  def medium_workout_params
    params.require(:medium_workout).permit(:workout)
  end

end