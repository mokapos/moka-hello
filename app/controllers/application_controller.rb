class ApplicationController < ActionController::Base
  def authentication_callback
    auth = request.env['omniauth.auth']
    reset_session

    if auth.uid
      credential = auth.credentials
      session[:id] = auth.uid
      session[:email] = auth.info.email
      session[:full_name] = auth.info.full_name
      session[:business_id] = auth.info.business_id
      session[:outlet_ids] = auth.info.outlet_ids
      session[:logged] = true
      session[:access_token] = credential.token
      session[:refresh_token] = credential.refresh_token
      session[:expires_at] = credential.expires_at
      redirect_to root_path, logout: true
    end
  end

  def logout
    auth = nil
    reset_session
    render "home/index"
  end
end
