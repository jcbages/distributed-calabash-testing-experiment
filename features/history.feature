Feature: Test History Feature

  Scenario: Empty history 
    Then I select tab number 2
    Then I take a screenshot named "empty_history__tab_2"

  Scenario: Normal history
    Then I enter text "23" into field with id "price"
    Then I enter text "49" into field with id "volume"
    Then I enter text "12" into field with id "odometer"
    Then I press button number 3

    Then I select tab number 1
    Then I enter text "54" into field with id "price"
    Then I enter text "100" into field with id "volume"
    Then I enter text "14" into field with id "odometer"
    Then I press button number 3
    
    Then I select tab number 2
    Then I take a screenshot named "normal_history__tab_3"
    Then I press list item number 1
    Then I take a screenshot named "normal_history__item1"
    Then I press button number 2
    Then I take a screenshot named "normal_history__item2"
    Then I press button number 1
    Then I take a screenshot named "normal_history__item1_again"

  Scenario: Overflow history
    Then I enter text "98765432112345678900987654321123456789009876543211" into field with id "price"
    Then I enter text "98765432112345678900987654321123456789009876543211" into field with id "volume"
    Then I enter text "98765432112345678900987654321123456789009876543211" into field with id "odometer"
    Then I press button number 3

    Then I select tab number 1
    Then I enter text "98249712374394723984721092831" into field with id "price"
    Then I enter text "98249712374394723984721092831" into field with id "volume"
    Then I enter text "98249712374394723984721092831" into field with id "odometer"
    Then I press button number 3
    
    Then I select tab number 2
    Then I take a screenshot named "overflow_history__tab_3"
    Then I press list item number 1
    Then I take a screenshot named "overflow_history__item1"
    Then I press button number 2
    Then I take a screenshot named "overflow_history__item2"
    Then I press button number 1
    Then I take a screenshot named "overflow_history__item1_again"