class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    added_attrs = %i[ email password password_confirmation remember_me
                      name bio category birthday
    ]

    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: %i[email password remember_me]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def after_update_path_for(resource)
    edit_user_registration_path(resource)
  end
end
