class PortfoliosController < ApplicationController

  def index
    @crypto = current_user.cryptos.all
   
  end

  def show
  end

  def destory
  end

end
