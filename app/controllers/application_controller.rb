class ApplicationController < ActionController::Base
  def authentication_callback
    auth = request.env['omniauth.auth']
    reset_session

    if auth.uid
      session[:id] = auth.uid
      session[:email] = auth.info.email
      session[:full_name] = auth.info.full_name
      session[:logged] = true
      redirect_to root_path, logout: true
    end
  end

  def logout
    auth = nil
    reset_session
    render "home/index"
  end

end
