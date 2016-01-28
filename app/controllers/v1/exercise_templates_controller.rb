module V1
  class ExerciseTemplatesController < ApplicationController
    before_action :set_exercise_template, only: [:show, :update, :destroy]

    # GET /exercise_templates
    # GET /exercise_templates.json
    def index
      @exercise_templates = ExerciseTemplate.all
      render json: @exercise_templates
    end

    # GET /exercise_templates/1
    # GET /exercise_templates/1.json
    def show
      render json: @exercise_template
    end

    # POST /exercise_templates
    # POST /exercise_templates.json
    def create
      @exercise_template = ExerciseTemplate.new(exercise_template_params)

      if @exercise_template.save
        render json: @exercise_template, status: :created, location: @exercise_template
      else
        render json: @exercise_template.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /exercise_templates/1
    # PATCH/PUT /exercise_templates/1.json
    def update
      @exercise_template = ExerciseTemplate.find(params[:id])

      if @exercise_template.update(exercise_template_params)
        head :no_content
      else
        render json: @exercise_template.errors, status: :unprocessable_entity
      end
    end

    # DELETE /exercise_templates/1
    # DELETE /exercise_templates/1.json
    def destroy
      @exercise_template.destroy

      head :no_content
    end

    private

    def set_exercise_template
      @exercise_template = ExerciseTemplate.find(params[:id])
    end

    def exercise_template_params
      params.require(:exercise_template).permit(:name, :description,
                                                :published, :upvotes_count,
                                                :downvotes_count,
                                                :comments_count,
                                                :completions_count)
    end
  end
end
