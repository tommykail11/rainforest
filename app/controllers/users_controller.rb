class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
    @user = User.new(params[:user])
    if @user.save
    	flash[:notice] = "Signup was successful!"
      redirect_to products_path
    else
    	# still the create action, but rendering the new view
      render :action => :new 
      # goes to the new action, renders the new view
    end
  end
end