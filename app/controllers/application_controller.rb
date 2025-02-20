class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    # 新規登録(sign_up)の際に、name, profile, occupation, positionパラメータを許可する
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])

   
  end

end