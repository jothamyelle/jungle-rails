class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:email])
    puts "user: #{user}"
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      puts "it worked!"
      redirect_to '/'
    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
      puts "it didn't work!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
