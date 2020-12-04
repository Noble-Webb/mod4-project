class AuthController < ApplicationController
    def create
        user = User.find_by(username: params[:username]) 
    
        if user && user.authenticate(params[:password])
            render json: { user: {id: user.id, username: user.username, profile_pic: user.profile_pic} }
        else
          render json: { error: 'Invalid username/password.' }, status: 401
        end
      end
end