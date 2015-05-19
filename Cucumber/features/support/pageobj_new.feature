  Feature: Test obj new

    Scenario Outline: Test Page Object New;
      Given The login page is opened new
      When I submit! "<Username>", "<Password>"
      Then it works! "<Username>"
      Examples:
        | Username       | Password |
        | 2001           | 2001     |