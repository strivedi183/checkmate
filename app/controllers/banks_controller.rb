class BanksController < ApplicationController
  def index
    @banks = @auth.banks.order(:name)
  end

  def new
    @bank = Bank.new
  end

  def create
    Bank.create(params[:bank])
    @banks = @auth.banks.order(:name)
  end

  def transact
  end
end