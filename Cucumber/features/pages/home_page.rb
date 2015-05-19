require_relative '../../features/pages/upper_menu'
require_relative '../spec/spec_helper'

class HomePage < UpperMenu
  include PageObject

  page_url 'http://demo.redmine.org'

end