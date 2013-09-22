class SiteController < ApplicationController

  def new
  	@message = Message.new message_params
  end

  def index
  	@messages = Message.all
  end

  def create
  	@message = Message.create message_params
  	redirect_to root_path
   end

  def message_params
  	params.require(:message).permit(:body)
  end

end

