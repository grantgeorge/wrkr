module V1
  class ExercisesController < ApplicationController
    before_action :set_exercise, only: [:update, :destroy]

    # GET /exercises
    def index
      @exercises = Exercise.all
      render json: @exercises
    end

    # GET /exercises/1
    def show
      if params[:include]
        includes_models = params[:include].split(',').map(&:to_sym)
      end
      if params[:attrs]
        @exercise = Exercise.select(params[:attrs]).includes(includes_models)
                            .find(params[:id])
      end
      @exercise ||= Exercise.includes(includes_models).find(params[:id])
      render json: @exercise
    end

    # POST /exercises
    def create
      @exercise = Exercise.new(exercise_params)
      if @exercise.save
        render json: @exercise, status: :ok, location: @exercise
      else
        render json: @exercise.errors, status: :bad_request
      end
    end

    # PATCH/PUT /exercises/1
    def update
      @exercise = Exercise.find(params[:id])

      if @exercise.update(exercise_params)
        head :no_content
      else
        render json: @exercise.errors, status: :bad_request
      end
    end

    # DELETE /exercises/1
    def destroy
      @exercise.destroy
      head :no_content
    end

    private

    def set_exercise
      @exercise = Exercise.find(params[:id])
    end

    def exercise_params
      params.require(:exercise).permit(:workout_id, :exercise_template_id, :user_id)
    end
  end
end
