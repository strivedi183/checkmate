module ApplicationHelper
  def login_nav
    nav = ""

    if @auth.present?
      nav += "<li>#{link_to(@auth.name + ' - ' + number_to_currency(@auth.banks.map(&:balance).reduce(:+)).to_s, '/login', :method => :delete, :remote => true, :class => 'button large alert')}</li>"
    else
      nav += "<li>#{link_to('Login', '/login', :remote => true, :class => 'button large radius')}"
    end

    nav
  end
end