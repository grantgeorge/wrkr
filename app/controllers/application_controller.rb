class ApplicationController < ActionController::API
  include ActionController::Serialization
  include DeviseTokenAuth::Concerns::SetUserByToken

  respond_to :json

  rescue_from ActiveRecord::RecordNotFound do
    head :bad_request
  end
end
