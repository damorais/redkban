Feature: A new user can create a new Account
  Scenario: As a new User I can navigate to create New Account page
    Given I am on the RedKban home page
    When I click on "Sign Up"
    Then I should be on the Create New Account page

  Scenario: As a new User I can create a New Account using the New User Form
    Given I am on the Sign Up page
    When I fill "email" with "damorais@gmail.com"
    And I fill "firstname" with "Daniel"
    And I fill "lastname" with "Morais"
    And I fill "password" with "12345678"
    And I fill "confirm_password" with "12345678"
    And I click on "Create My User"
    Then An user with "damorais@gmail.com" email exists
    And I should be redirected to Boards page
    And A "success" message saying that "User was created successfully" should be exibited

Scenario: If a e-mail is already registered, the user must be informed and alerted
    Given I am on the Sign Up page
    And An user with "damorais@gmail.com" email already exists
    When I fill "email" with "damorais@gmail.com"
    And I fill "firstname" with "Daniel"
    And I fill "lastname" with "Morais"
    And I fill "password" with "12345678"
    And I fill "confirm_password" with "12345678"
    And I click on "Create My User"
    Then A message saying that "There are another user with this e-mail" should be exibited