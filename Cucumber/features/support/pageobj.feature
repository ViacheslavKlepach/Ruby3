  Feature: Test obj

    Scenario Outline: Test Page Object;
      Given The login page is opened
      When I submit "<Username>"
      Then it works "<Username>", "<Password>"
      Examples:
        | Username       | Password |
        | 2001           | 2001     |