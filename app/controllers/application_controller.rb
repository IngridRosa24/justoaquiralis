class ApplicationController < ActionController::Base
    before_action :authenticate_pyme!
    before_action :authenticate_buyer!
    before_action :nuevos_parametros_devise, if: :devise_controller?
    
    protected
    def nuevos_parametros_devise
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname, :pymesname])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :lastname, :pymesname])
    end

end
