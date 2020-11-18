class SessionsController < ApplicationController

    def create
        user = User.find_by(email:login_params[:email])

        if user && user.authenticate(login_params[:password])
            session[:user_id] = user.id 
            redirect_to articles_path
        else
            flash[:login_errors] = ['invalid credentials']
        end
    end

    private
        def login_params
            params.require(:login).permit(:email, :password, :phone)
        end
    
end
