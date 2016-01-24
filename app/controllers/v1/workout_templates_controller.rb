module V1
  class WorkoutTemplatesController < ApplicationController
    before_action :set_workout_template, only: [:show, :update, :destroy]

    # GET /workout_templates
    # GET /workout_templates.json
    def index
      @workout_templates = WorkoutTemplate.all

      render json: @workout_templates
    end

    # GET /workout_templates/1
    # GET /workout_templates/1.json
    def show
      render json: @workout_template
    end

    # POST /workout_templates
    # POST /workout_templates.json
    def create
      @workout_template = WorkoutTemplate.new(workout_template_params)

      if @workout_template.save
        render json: @workout_template, status: :created, location: @workout_template
      else
        render json: @workout_template.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /workout_templates/1
    # PATCH/PUT /workout_templates/1.json
    def update
      @workout_template = WorkoutTemplate.find(params[:id])

      if @workout_template.update(workout_template_params)
        head :no_content
      else
        render json: @workout_template.errors, status: :unprocessable_entity
      end
    end

    # DELETE /workout_templates/1
    # DELETE /workout_templates/1.json
    def destroy
      @workout_template.destroy

      head :no_content
    end

    private

      def set_workout_template
        @workout_template = WorkoutTemplate.find(params[:id])
      end

      def workout_template_params
        params.require(:workout_template).permit(:user_id, :name, :description, :upvotes_count, :downvotes_count, :comments_count, :completions_count, :exercises_count, :published)
      end
  end
end
