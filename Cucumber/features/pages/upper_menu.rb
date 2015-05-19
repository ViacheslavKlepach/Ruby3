class UpperMenu
  include PageObject

  link(:home, class: 'home')
  link(:my_page, class: 'my-page')
  link(:projects, class: 'projects')

  link(:register, class: 'register')
  link(:my_account, class: 'my-account')

  link(:login, class: 'login')
  link(:logout, class: 'logout')

  div(:loggedas, xpath: ".//*[@id='loggedas']/a")

end