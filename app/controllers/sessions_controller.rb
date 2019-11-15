class SessionsController < ApplicationController

	def new
	end

	def create
	user = User.find_by(:email => params[:email])
	session[:user_id] = user.id
	redirect_to root_path
	end 

	def destroy
      session.destroy
      redirect_to login_path
    end

    def privacy
    end
    #<meta property="og:image"       content="https://autumns-world.herokuapp.com<%=url_for(@post.pic)%>" />
    
end
 