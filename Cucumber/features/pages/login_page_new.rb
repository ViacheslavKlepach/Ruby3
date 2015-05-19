# require_relative 'home_page'
require_relative '../spec/spec_helper'
require_relative '../../features/pages/upper_menu'

class LoginPageNew < UpperMenu
  include PageObject

  text_field :username, id: 'username'
  text_field :password, id: 'password'
  button :submit, name: 'login'

  page_url 'http://demo.redmine.org/login' # this is for visit

  def login_as(name,password)
    self.username = name
    self.password = password
    submit
    HomePage.new(@browser)
  end
end

#CLASSIC
# login_page = LoginPage.new
# login_page.username ='2070'
# login_page.password ='2070'

#my_account_page = login_page.login_as(user)

#PAGEOBJECT_FACTORY
#on(LoginPage).login_as(user)

#visit(LoginPage).login_as(user) #ONLY if page_url_provided