class Auth0Controller < ApplicationController
    def callback
      session[:userinfo] = request.env['omniauth.auth']
      redirect_to '/'
    end
  
    def failure
      @error_msg = request.params['message']
    end
  end
  