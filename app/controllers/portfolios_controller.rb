class PortfoliosController < ApplicationController
    before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

    def index 
        # Or maybe this goes on the user page? IDK
    end 

    def new 
        @portfolio = Portfolio.new 
        # Won't be needed if I go to JS front end
    end 

    def create 
        @portfolio = Portfolio.new(portfolio_params)
        if @portfolio.save 
            redirect_to @portfolio 
            # or render json: PortfolioSerializer.new(@portfolio)
        else 
            render :new 
            # or render json: {errors: portfolio.errors.full_messages}
        end 
    end 

    def show 
        # render json: @portfolio
    end 

    def edit 
    end 

    def update 
        if @portfolio.update 
            redirect_to @portfolio
            #or render json: PortfolioSerializer.new(@portfolio)
        else 
            render :edit 
            # render json see above 
    end 

    def destroy 
    end 

    private 

    def set_portfolio 
        @portfolio = Portfolio.find(params[:id])
    end 

    def set_user 
        @user = User.find(params[:user_id])
    end 

    def portfolio_params 
        params.require(:portfolio).permit(:name, :description, :user_id)
    end 
end 