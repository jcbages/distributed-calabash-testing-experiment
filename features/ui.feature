Feature: Test UI Components

  Scenario: Test device orientation
    Then I set orientation to landscape
    Then I take a screenshot
    Then I set orientation to portrait
    Then I take a screenshot

  Scenario: Test tabs
    Then I select tab number 2
    Then I take a screenshot
    Then I select tab number 4
    Then I take a screenshot
    Then I select tab number 3
    Then I take a screenshot
    Then I select tab number 1
    Then I take a screenshot

    Then I set orientation to landscape
    
    Then I select tab number 2
    Then I take a screenshot
    Then I select tab number 4
    Then I take a screenshot
    Then I select tab number 3
    Then I take a screenshot
    Then I select tab number 1
    Then I take a screenshot

    Then I set orientation to portrait