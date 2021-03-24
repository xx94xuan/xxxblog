class ChatsController < ApplicationController
  layout "main"
  
  before_action :init, unless: -> { logged_in? }

  def index
  end
end
