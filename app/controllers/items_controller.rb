class ItemsController < ApplicationController
  def index
    res = get_items

    if !res.is_a?(Net::HTTPSuccess)
      refresh_token = session[:refresh_token]
      uri = URI("#{ENV['MOKA_HOST_PROVIDER']}/oauth/token")
      res = Net::HTTP.post_form(uri, 'grant_type' => 'refresh_token', 'client_id' => ENV['MOKA_APP_ID'], 'client_secret' => ENV['MOKA_SECRET_KEY'], 'refresh_token' => refresh_token)
      new_credential = JSON.parse(res.body)
      session[:access_token] = new_credential["access_token"]
      session[:refresh_token] = new_credential["refresh_token"]
      session[:expires_at] = new_credential["expires_in"]
      res = get_items
    end

    render json: res.body
  end

  def get_items
    uri = URI("#{ENV['MOKA_HOST_PROVIDER']}/v1/outlets/#{session[:outlet_ids].first}/items")
    params = {access_token: session[:access_token]}
    uri.query = URI.encode_www_form(params)
    Net::HTTP.get_response(uri)
  end

end
