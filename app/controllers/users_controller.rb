class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    def new 
        @user = User.new
    end 

    def create 
        @user = User.new
        if @user.valid?
            @user.save 
            session[:user_id] = @user.id 
            redirect_to @user 
            # if this becomes a JS front end this is where render: json would go
        else
            render :new
            # and if this becomes a JS front end this is where the json goes
        end 
    end 

    def show 
        # render json: @user
        # this doesn't actually need to be a ... a thingie
    end 

    def edit 
    end 

    def update 
    end 

    private 

    def set_user 
        @user = User.find(params[:id])
    end 

    def user_params 
    end 
end 