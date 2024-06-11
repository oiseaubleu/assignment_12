class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :login_required

  private

  def login_required
    flash[:danger] = 'ログインしてください'
    redirect_to new_session_path unless current_user
  end

end
