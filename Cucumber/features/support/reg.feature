Feature: Registration
  As an unregistered user
  I want to create a user
  So that I can use functionality available to registered users

  Scenario: Access the "Register" page
    Given The page "http://demo.redmine.org/" is opened
    When I click "register" link
    Then The "http://demo.redmine.org/account/register" page should be displayed

  Scenario Outline: Submit a request with required data to create a new user
    Given The page "http://demo.redmine.org/account/register" is opened
    When I submit a request with required "<Username>", "<Password>" to create a new user
    Then a new "<Username>" should be created
    Examples:
      | Username       | Password |
      | 2002           | 2002     |