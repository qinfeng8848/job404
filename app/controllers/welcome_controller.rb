class WelcomeController < ApplicationController
  def index
    flash[:notice] = "重大好消息发布"
  end
end
