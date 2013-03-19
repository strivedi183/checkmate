class BanksController < ApplicationController
  def index
    @banks = @auth.banks.order(:name)
  end

  def new
    @bank = Bank.new
  end

  def create
    bank = Bank.create(params[:bank])
    @auth.banks << bank
    @banks = @auth.banks.order(:name)
  end

  def transact
  end
end