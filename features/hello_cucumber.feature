Feature: Welcome
    In order to read the page
    As a viewer
    I want to see the home page of my app

    Scenario: View home page
        Given I am on the home page
        Then I should see "Hello, Rails!!!"