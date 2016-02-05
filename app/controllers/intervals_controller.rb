class IntervalsController < ApplicationController
  before_action :set_interval, only: [:show, :update, :destroy]

  # GET /intervals
  # GET /intervals.json
  def index
    @intervals = Interval.all

    render json: @intervals
  end

  # GET /intervals/1
  # GET /intervals/1.json
  def show
    render json: @interval
  end

  # POST /intervals
  # POST /intervals.json
  def create
    @interval = Interval.new(interval_params)

    if @interval.save
      render json: @interval, status: :created, location: @interval
    else
      render json: @interval.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /intervals/1
  # PATCH/PUT /intervals/1.json
  def update
    @interval = Interval.find(params[:id])

    if @interval.update(interval_params)
      head :no_content
    else
      render json: @interval.errors, status: :unprocessable_entity
    end
  end

  # DELETE /intervals/1
  # DELETE /intervals/1.json
  def destroy
    @interval.destroy

    head :no_content
  end

  private

    def set_interval
      @interval = Interval.find(params[:id])
    end

    def interval_params
      params.require(:interval).permit(:duration, :number_of_reps, :exercise_id, :started_at, :completed_at)
    end
end
