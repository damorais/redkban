class UsersController < ApplicationController

    def new
    end

    def create
        @user = User.new(user_params)
    
        if @user.save
            flash[:success] = "User was created successfully"
            redirect_to boards_path
        else
            render 'new'
        end
    end
    
private
    def user_params
        params.require(:user).permit(:email, :firstname, :lastname, :password)
    end
    
end
