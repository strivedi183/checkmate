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

  def show
    @bank = Bank.find(params[:id])
  end

  def transfer
    binding.pry
  end

  def xfer
    bank_from = Bank.find(params[:bank_from])
    bank_to = Bank.find(params[:bank_to])
    transaction = params[:transaction].to_f
    if bank_from != bank_to && bank_from.balance >= transaction
      bank_from.balance -= transaction
      bank_from.save
      bank_to.balance += transaction
      bank_to.save
    end
    flash[:message] = "You transferred #{transaction} from #{bank_from.name} to #{bank_to.name}"
    redirect_to(root_path)
  end

end