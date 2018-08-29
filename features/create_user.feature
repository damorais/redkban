Feature: A new user can create a new Account
  Scenario: As a new User navigate to create New Account page
    Given I am on the RedKban home page
    When I click on "Sign Up"
    Then I should be on the Create New Account page