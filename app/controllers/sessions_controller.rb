class SessionsController < ApplicationController
  protect_from_forgery except: :create
  def create
    # @provider_hash = request.env['omniauth.auth'].to_json
    omni = request.env['omniauth.auth']
    @reporter = Reporter.find_or_create_by(uid: omni['uid']) do |reporter|
      reporter.name = omni['info']['name']
      reporter.email = omni['info']['email']
    end
    self.current_user = @reporter
  end
  def login
  end
  def logout
    reset_session
    redirect_to login_url, notice: "You've been logged out"
  end
end
