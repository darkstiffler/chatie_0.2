class SiteController < ApplicationController

	def message_params
  		params.require(:message).permit(:body)
   end

  def new
  end

  def index
  	@messages = Message.all
  end

  def create
  	@message = Message.create
  	redirect_to root_path
   end

  

end

