class EntriesController < ApplicationController
    before_action :set_entry, only: [:show, :edit, :update, :destroy]
    before_action :set_portfolio, only: [:new, :create, :edit, :update]

    def index 
        @portfolio = Portfolio.find(params[:id])
        # Portfolio.find(params[:portfolio_id]) maybe? depending on architecture
        @entries = @portfolio.entries 
        # Taking all the entries from the portfolio since we're nesting entries in portfolios
    end 

    def new 
        @entry = Entry.new 
    end 

    def create 
        @entry = Entry.new(entry_params)
        if @entry.valid?
            @entry = @portfolio.entries.build(entry_params)
            @entry.save
            redirect_to @entry 
            # There's another way to do this in Audrey_Three's items controller
            # Once back end and front end basics are set up, look into that
        else 
            render :new
        end 
    end 

    def show 
    end 

    def edit 
    end 

    def update 
        # We already have the entry and portfolio set from the private methods
        if @entry.update(entry_params)
            redirect_to portfolio_entry_path(@portfolio, @entry)
            #if the entry is valid, the update function should clear
        else
            render :edit 
        end 
    end 

    def destroy 
        @portfolio = @entry.portfolio 
        # Set a portfolio variable to the parent object of the entry
        @entry.destroy 
        # Delete the entry
        redirect_to @portfolio 
        # And since we set the portfolio variable we can now redirect there
    end 

    private 

    def set_entry 
        @entry = Entry.find(params[:id])
    end 

    def set_portfolio
        @portfolio = Portfolio.find(params[:portfolio_id])
    end 

    # def set_user? 
    # end?

    def entry_params 
    end 
end 