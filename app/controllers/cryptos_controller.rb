class CryptosController < ApplicationController
  before_action :set_crypto, only: [:show, :edit, :update, :destroy]

  def index
    @cryptos = Crypto.all
  end

  def show
  end

  def new
    @crypto = Crypto.new
  end

  def create
    @crypto = Crypto.new(crypto_params)
    @crypto.save

    redirect_to crypto_path(@crypto)
  end

  def edit
  end

  def update
    @crypto = Crypto.find(params[:id])
    @crypto.update(crypto_params)

    redirect_to crypto_path(@crypto)
  end

  private

  def set_crypto
    @crypto = Crypto.find(params[:id])
  end

  def crypto_params
    params.require(:crypto).permit(:cmc_rank, :name, :price, :volume_24h, :market_cap, :circulating_supply, :max_supply)
  end
end
