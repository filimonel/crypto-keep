class CryptosController < ApplicationController
  before_action :set_crypto, only: [:show, :edit, :update, :destroy]
  
  def index
    @cryptos = Crypto.all
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def set_crypto
    @crypto = Crypto.find(params[:id])
  end
end
