class SessionsController < ApplicationController
  protect_from_forgery except: :create
  def create
    # @provider_hash = request.env['omniauth.auth'].to_json
    omni = request.env['omniauth.auth']
    @reporter = Reporter.find_or_create_by(uid: omni['uid']) do |author|
      reporter.name = omni['info']['name']
      reporter.nickname = omni['info']['nickname']
      reporter.email = omni['info']['email']
    end
  end
end
