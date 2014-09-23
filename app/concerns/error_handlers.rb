module ErrorHandlers
  extend ActiveSupport::Concern

  included do
    rescue_from Mongoid::Errors::DocumentNotFound, with: :not_found_error
  end

  def not_found_error(exception)
    flash[:alert] = "No se encontró el documento deseado"

    redirect_to back_url
  end

end