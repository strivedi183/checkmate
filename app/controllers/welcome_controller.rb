class WelcomeController < ApplicationController
  def index
    @banks = Bank.all
  end
end