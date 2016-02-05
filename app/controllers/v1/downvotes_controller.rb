module V1
  class DownvotesController < ApplicationController
    before_action :set_downvote, only: [:show, :update, :destroy]

    # GET /downvotes
    # GET /downvotes.json
    def index
      @downvotes = Downvote.all

      render json: @downvotes
    end

    # GET /downvotes/1
    # GET /downvotes/1.json
    def show
      render json: @downvote
    end

    # POST /downvotes
    # POST /downvotes.json
    def create
      @downvote = Downvote.new(downvote_params)

      if @downvote.save
        render json: @downvote, status: :created, location: @downvote
      else
        render json: @downvote.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /downvotes/1
    # PATCH/PUT /downvotes/1.json
    def update
      @downvote = Downvote.find(params[:id])

      if @downvote.update(downvote_params)
        head :no_content
      else
        render json: @downvote.errors, status: :unprocessable_entity
      end
    end

    # DELETE /downvotes/1
    # DELETE /downvotes/1.json
    def destroy
      @downvote.destroy

      head :no_content
    end

    private

      def set_downvote
        @downvote = Downvote.find(params[:id])
      end

      def downvote_params
        params.require(:downvote).permit(:user_id, :downvotable_id, :downvotable_type)
      end
  end
end
