Feature: Test the maruti true value site for buying cars
  Scenario: Check if we are able to select all the dropdowns
    Given I am in maruti true value buy page
    When I select the City Chennai Dropdown
    And Select Model from the Model dropdown
    And Select Price from the Price dropdown
    And Select Mileage from the Mileage dropdown
    And Select Reg. Year from the dropdown
    And I click on Go Button
    Then I check the number of cars available

  Scenario: Check the cars listed for Chennai region
    Given I am in maruti true value buy page
    When I select the City Chennai Dropdown
    And I click on Go Button
    Then I check if i have traveresed to next page
    And select the cars in first and fifth position
    And Click on Compare Selected button
    Then Verify if "Car Comparison" is displayed