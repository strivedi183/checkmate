require 'spec_helper'
require 'features/shared/login_helper'
include LoginHelper

describe 'Welcome' do
  describe 'GET /' do
    it 'displays the Login button' do
      visit root_path
      page.should have_link('Login')
    end
  end

  describe 'GET /login' do
    it 'displays the Login Form', :js => true do
      visit root_path
      click_link('Login')
      page.should have_button('Login $ for $')
    end
  end

  describe 'POST /login' do
    let(:user) {FactoryGirl.create(:user)}

    it 'logs the user into the system if credentials are correct', :js => true do
      login_to_system(user)
      page.should_not have_button('Login $ for $')
      expect(page.has_link?(user.name)).to be true
      page.should_not have_link('Login')
      visit root_path
      expect(page.has_link?(user.name)).to be true
      page.should_not have_link('Login')
    end
    it 'does not log the user into the system if credentials are incorrect', :js => true do
      visit root_path
      click_link('Login')
      fill_in('Email', :with => user.email)
      fill_in('Password', :with => 'b')
      click_button('Login $ for $')
      page.should have_button('Login $ for $')
    end
  end

  describe 'JS cancel_login_form()' do
    it 'removes the login form', :js => true do
      visit root_path
      click_link('Login')
      click_link('Cancel')
      page.should_not have_button('Login $ for $')
    end
  end
end