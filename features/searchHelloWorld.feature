Feature: Simple search in Google Page
  Scenario: Search Hello World in Google
    Given that I am on the google search page
    When I type "hello world" in the search box
    And I click on search button
    Then "Hello world program" should be displayed in the results