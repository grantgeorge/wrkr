module V1
  #
  class WorkoutsController < ApplicationController
    before_action :set_workout, only: [:show, :update, :destroy]

    # GET /v1/workouts
    def index

      @includes = params["includes"].split(',') if params["includes"]

      Rails.logger.debug "@includes #{@includes.inspect}".light_yellow

      @workouts = Workout.all.includes(:user, :comments)

      render json: @workouts, includes: @includes
    end

    # GET /v1/workouts/1
    def show
      render json: @workout
    end

    # POST /v1/workouts
    def create
      @workout = Workout.new(workout_params)

      if @workout.save
        render json: @workout, status: :created, location: @workout
      else
        render json: @workout.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /v1/workouts/1
    def update
      if @workout.update(workout_params)
        head :no_content
      else
        render json: @workout.errors, status: :unprocessable_entity
      end
    end

    # DELETE /v1/workouts/1
    def destroy
      @workout.destroy
      head :no_content
    end

    private

    def set_workout
      @workout = Workout.find(params[:id])
    end

    def workout_params
      params.require(:workout).permit(:name, :description, :upvotes_count,
                                      :downvotes_count, :comments_count,
                                      :workout_completions_count,
                                      :exercises_count, :published, :user_id)
    end
  end
end
