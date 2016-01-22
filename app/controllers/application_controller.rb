class ApplicationController < ActionController::API
  include ActionController::Serialization
  include DeviseTokenAuth::Concerns::SetUserByToken
end
