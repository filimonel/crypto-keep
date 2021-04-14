class CryptosController < ApplicationController
  def index
    @cryptos = Crypto.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
