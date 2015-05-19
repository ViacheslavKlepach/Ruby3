# require_relative 'home_page'
require_relative '../../features/pages/upper_menu'

class LoginPage < UpperMenu

  def initialize(browser)
    @browser=browser
  end

  def username=(username)
    @browser.find_element(id: 'username').send_keys username
  end

  def password=(password)
    @browser.find_element(id: 'password').send_keys password
  end
#page_url 'redmine.org'
  def login
    @browser.find_element(name: 'login').click
  end

  def login_as(name,password)
    self.username = name
    self.password = password
    login
    #HomePage.new(@browser)
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