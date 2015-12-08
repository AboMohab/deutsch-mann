class SignupsController < ApplicationController
  def new 
    @new_signup=Signup.new
  end
  
  def create 
    @signup=Signup.new(signup_params)
    if @signup.save 
      redirect_to '/thanks'
    else 
      render '/signups/contacts'
    end
  end
    
  
  private
  def signup_params
    params.require(:signup).permit(:firstname,:email) #params.rquire(:model name ).permit(:column names)
  end
  
  
end
