class WelcomeController < ApplicationController
   def new
	  @management = Management.new(params[:management])
	  if @management.save
		flash[:success] = "Succcesfully registered to vote for your candidate"
	  else
   	     render 'index'
	  end
	end
	
	def create 
		@user = Management.new(params[:management])
	end
	def user 
		@user = Management.new(params[:management])
	end		
end
