Feature: Creating workspace
  Backgroud:
    Given I am on the welcome page

  Scenario: move to new workspace page
    When I visit creating workspace page
    Then I should save button
