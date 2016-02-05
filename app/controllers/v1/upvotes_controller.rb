module V1
  class UpvotesController < ApplicationController
    before_action :set_upvote, only: [:show, :update, :destroy]

    # GET /upvotes
    def index
      @upvotes = Upvote.where(upvotable_id: upvotable_id,
        upvotable_type: upvotable_klass)
      render json: @upvotes
    end

    # GET /upvotes/1
    def show
      render json: @upvote
    end

    # POST /upvotes
    def create
      @upvote = Upvote.new(upvote_params)

      if @upvote.save
        render json: @upvote, status: :created, location: @upvote
      else
        render json: @upvote.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /upvotes/1
    def update
      @upvote = Upvote.find(params[:id])

      if @upvote.update(upvote_params)
        head :no_content
      else
        render json: @upvote.errors, status: :unprocessable_entity
      end
    end

    # DELETE /upvotes/1
    def destroy
      @upvote.destroy

      head :no_content
    end

    private

      def set_upvote
        @upvote = Upvote.find(params[:id])
      end

      def upvote_params
        params.require(:upvote).permit(:user_id, :upvotable_id)
      end

      def upvotable_klass
        params.permit(:workout_template_id, :exercise_template_id).keys[0].slice(0..-4).camelize
          .constantize
      end

      def upvotable_id
        params.permit(:workout_template_id, :exercise_template_id).values[0]
      end
  end
end
