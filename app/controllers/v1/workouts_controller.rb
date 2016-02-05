module V1
  class WorkoutsController < ApplicationController
    before_action :set_workout, only: [:update, :destroy]

    # GET /workouts
    def index
      @workouts = Workout.all

      render json: @workouts
    end

    # GET /workouts/1
    def show
      # @workout_template = WorkoutTemplate.eager_load(:exercise_templates,
      #   :comments, :upvotes, :downvotes)
      #   .find(params[:id])
      @workout = Workout.eager_load(:lift_exercises, :interval_exercises)
        .find(params[:id])
      render json: @workout
    end

    # POST /workouts
    def create
      @workout = Workout.new(workout_params)

      if @workout.save
        render json: @workout, status: :created, location: @workout
      else
        render json: @workout.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /workouts/1
    def update
      @workout = Workout.find(params[:id])

      if @workout.update(workout_params)
        head :no_content
      else
        render json: @workout.errors, status: :unprocessable_entity
      end
    end

    # DELETE /workouts/1
    def destroy
      @workout.destroy

      head :no_content
    end

    private

    def set_workout
      @workout = Workout.find(params[:id])
    end

    def workout_params
      params.require(:workout).permit(:workout_template_id, :user_id)
    end
  end
end
