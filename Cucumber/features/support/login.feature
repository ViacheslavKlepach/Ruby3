Feature: Login to the system
  As a user
  I want to login into the system when I provide username and password
  So that I can use functionality available to logged in users

  Scenario: Access the "Login" page
    Given The page "http://demo.redmine.org/" is opened
    When I click "login" link
    Then The "http://demo.redmine.org/login" page should be displayed

  Scenario Outline: Log in (Log out) to the system
    Given The page "http://demo.redmine.org/login" is opened
    When I input valid "<Username>" to the "username" text-box
    And I input valid "<Password>" to the "password" text-box
    And I click "login" button
    Then The "http://demo.redmine.org/my/page" page should be displayed
    When I click "logout" link
    Then The "login" link should be available
    And The "http://demo.redmine.org/" page should be displayed
    Scenarios:
    Examples:
    |Username        |Password|
    |2060            |2060    |
    |2061            |2061    |