require 'spec_helper'
require 'features/shared/login_helper'
include LoginHelper

describe 'Banks' do

  describe 'GET /' do
    let(:user) {FactoryGirl.create(:user)}

    it 'sees the ADD BANK button after logging in ', :js => true do
      login_to_system(user)
      page.should have_link('Add Bank')
    end

    it 'does not show the ADD BANK button when not logged in' do
      visit root_path
      page.should_not have_link('Add Bank')
    end

    it 'shows add bank form when ADD BANK button is pressed', :js => true do
      login_to_system(user)
      click_link('Add Bank')
      page.should have_button('Create Bank')
    end

    it 'closes the form when the cancel button is pressed', :js => true do
      login_to_system(user)
      click_link('Add Bank')
      click_link('Cancel')
      page.should_not have_button('Create Bank')
    end


  end

end
