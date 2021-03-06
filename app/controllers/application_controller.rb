class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

    def after_sign_in_path_for(resource)
        case resource
          when User
            user_musicals_path
          when Admin
            admin_musicals_path
        end
    end

    def after_sign_out_path_for(resource)
        case resource
        when :user
            root_path
        when :admin
            admin_session_path
        end
    end
end
