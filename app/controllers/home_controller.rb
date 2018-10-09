class HomeController < ApplicationController
  def trade
  end
  def getCurrencyExchange(coin1, coin2)
      coinWallet wallet
      exchangeRate = wallet.getExchangePrice(coin1) / wallet.getExchangePrice(coin2)
      return exchangeRate
  end
end
