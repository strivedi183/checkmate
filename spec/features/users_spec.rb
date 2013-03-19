require 'spec_helper'
require 'features/shared/login_helper'
include LoginHelper

describe 'Users' do

  describe 'GET /' do
    it 'displays register link' do
      visit root_path
      page.should have_link('Register')
    end
  end

  describe 'GET /users/new' do
    it 'displays the new user form' do
      visit root_path
      click_link('Register')
      page.should have_button('Create User')
    end
  end
end