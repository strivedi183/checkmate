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

  def transfer
  end

  def show
    @bank = Bank.find(params[:id])
  end

  def new_transaction
    @bank = Bank.find(params[:id])
  end

  def user_xfer
    amount = params[:amount].to_f
    if params[:transaction_type] == 'withdrawal'
      bank = Bank.find(params[:bank_id])
      transaction = Transaction.create(amount: amount, transaction_type: params[:transaction_type])
      bank.balance -= amount
      bank.save
      bank.transactions << transaction
    elsif params[:transaction_type] == 'deposit'
      bank = Bank.find(params[:bank_id])
      transaction = Transaction.create(amount: amount, transaction_type: params[:transaction_type])
      bank.balance += amount
      bank.save
      bank.transactions << transaction
    else
    end
  end

  def xfer
    bank_from = Bank.find(params[:bank_from])
    bank_to = Bank.find(params[:bank_to])
    amount = params[:transaction].to_f
    if bank_from != bank_to && bank_from.balance >= amount
      bank_from.balance -= amount
      transaction_from = Transaction.create(amount: amount, transaction_type: 'withdrawal', from: bank_to.name)
      bank_from.transactions << transaction_from
      bank_from.save
      bank_to.balance += amount
      transaction_to = Transaction.create(amount: amount, transaction_type: 'deposit', from: bank_from.name)
      bank_to.transactions << transaction_to
      bank_to.save
    end
    flash[:message] = "You transferred #{amount} from #{bank_from.name} to #{bank_to.name}"
    redirect_to(root_path)
  end

end