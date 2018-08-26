Feature: A new user can create a new account
  Scenario: User don't have an account
    Given I am on the RedKBan home page
    When I follow "Create a new account"
    Then I should be on the Create New User page
    Then I fill "Name" with "Daniel"
    And I fill "Middle Name" with "Marques Gomes de"
    And I fill "LastName" with "Morais"
    And I fill "Email" with "damorais@gmail.com"
    And I fill "Password" with "123456"
    And I fill "Confirm Password" with "123456"
    And I press "Create My Account"
    Then I should be on the Boards page with my user logged in

