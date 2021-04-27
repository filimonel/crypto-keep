class PortfoliosController < ApplicationController

  def index
  end

  def show
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])
    @portfolio.destroy

    redirect_to portfolios_path
  end

end
