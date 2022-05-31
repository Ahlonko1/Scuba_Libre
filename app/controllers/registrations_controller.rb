class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(_ressource)
    "/dashboard"
  end

  def after_inactive_sign_up_path_for(_ressource)
    "/dashboard"
  end
end
