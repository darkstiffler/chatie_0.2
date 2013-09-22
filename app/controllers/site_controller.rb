class SiteController < ApplicationController

  def index
  	@messages = Message.all 
  end

  def create
  	@message = Message.create(messge_params)
  end

  def message_params
  	params.require(:message).permit(:body)
  end
end
