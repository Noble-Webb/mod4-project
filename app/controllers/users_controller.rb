class UsersController < ApplicationController
   
    def index
        
    end
    
    def show
       user = User.find(params[:id])
       render json: user 
    end
    
    def create
        user = User.create_with(profile_pic: 
        params[:profile_pic], name: 
        params[:name]).find_or_create_by(email: 
        params[:email].downcase, username: params[:username]))

        if user.save
            render json: user
        else
            render json: {error: "Please enter a valid Username and Email"}, status: 403
        end
    end
    
    
    def update
        user = User.find(params[:id])

        user.assign_attributes(user_params)

        if user.valid?
            user.save
            render json: user
        else
            render json: user.errors.full_messages
        end
    end
    
    def destroy
        user = User.find(params[:id])
        user.destroy

        render json: {message: "Saying goodbye doesn't mean anything. It's the time we spent together that matters, not how we left it. - Trey Parker"}
    end

    private
    def user_params
        params.require(:user).permit(:email, :username, :profile_pic)

end
