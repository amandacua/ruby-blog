class UsersController < ApplicationController

    def index
        # Fetches the records
        @user = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new 
        @user = User.new(account_params)
    end

    def create
        user = User.new(account_params)
        if user.save
            session[:user_id] = user.id
            redirect_to articles_path
        else 
            flash[:register_errors] = user.errors.full_messages
            redirect_to articles_path
        end
    end

    def destroy
        cookies.delete(:user_id)
        redirect_to articles_path
    end

    private

    def account_params
        params.require(:user).permit(:email, :password, :phone)
    end
end
