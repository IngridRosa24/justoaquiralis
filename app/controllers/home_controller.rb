class HomeController < ApplicationController
  skip_before_action :authenticate_pyme!
  skip_before_action :authenticate_buyer!
  def index
  end
end
