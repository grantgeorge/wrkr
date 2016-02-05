class LiftSetsController < ApplicationController
  before_action :set_lift_set, only: [:show, :update, :destroy]

  # GET /lift_sets
  # GET /lift_sets.json
  def index
    @lift_sets = LiftSet.all

    render json: @lift_sets
  end

  # GET /lift_sets/1
  # GET /lift_sets/1.json
  def show
    render json: @lift_set
  end

  # POST /lift_sets
  # POST /lift_sets.json
  def create
    @lift_set = LiftSet.new(lift_set_params)

    if @lift_set.save
      render json: @lift_set, status: :created, location: @lift_set
    else
      render json: @lift_set.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lift_sets/1
  # PATCH/PUT /lift_sets/1.json
  def update
    @lift_set = LiftSet.find(params[:id])

    if @lift_set.update(lift_set_params)
      head :no_content
    else
      render json: @lift_set.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lift_sets/1
  # DELETE /lift_sets/1.json
  def destroy
    @lift_set.destroy

    head :no_content
  end

  private

    def set_lift_set
      @lift_set = LiftSet.find(params[:id])
    end

    def lift_set_params
      params.require(:lift_set).permit(:number_of_reps, :weight, :lift_exercise_id, :completed, :started_at, :compelted_at)
    end
end
