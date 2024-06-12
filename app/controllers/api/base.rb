class Api::Base < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActionController::ParameterMissing, with: :parameter_missing

  def record_not_found
    render json: { error: 'Record not found' }, status: :not_found
  end

  def parameter_missing
    render json: { error: 'Parameter missing' }, status: :bad_request
  end
end
