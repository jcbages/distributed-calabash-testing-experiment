Feature: Test UI Components

  Scenario: Test device orientation
    Then I set orientation to landscape
    Then I take a screenshot named "test_device_orientation__set_landscape"
    Then I set orientation to portrait
    Then I wait
    Then I take a screenshot named "test_device_orientation__set_portrait"

  Scenario: Test tabs
    Then I select tab number 2
    Then I take a screenshot named "test_tabs__set_tab_2_portrait"
    Then I select tab number 4
    Then I take a screenshot named "test_tabs__set_tab_4_portrait"
    Then I select tab number 3
    Then I take a screenshot named "test_tabs__set_tab_3_portrait"
    Then I select tab number 1
    Then I take a screenshot named "test_tabs__set_tab_1_portrait"

    Then I set orientation to landscape
    Then I wait
    
    Then I select tab number 2
    Then I take a screenshot named "test_tabs__set_tab_2_landscape"
    Then I select tab number 4
    Then I take a screenshot named "test_tabs__set_tab_4_landscape"
    Then I select tab number 3
    Then I take a screenshot named "test_tabs__set_tab_3_landscape"
    Then I select tab number 1
    Then I take a screenshot named "test_tabs__set_tab_1_landscape"