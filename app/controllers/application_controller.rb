class ApplicationController < ActionController::API
  include ActionController::Serialization

  rescue_from ActionController::ParameterMissing do |exception|
    render json: { error: "#{exception.param} is required" }, status: 422
  end
end
