Feature: Test Stats Feature

  Scenario: Empty stats 
    Then I select tab number 3
    Then I take a screenshot named "empty_stats__tab_3"
    Then I touch the "Average fuel economy" text
    Then I take a screenshot named "empty_stats__no_license"

  Scenario: Normal stats
    Then I enter text "23" into field with id "price"
    Then I enter text "49" into field with id "volume"
    Then I enter text "12" into field with id "odometer"
    Then I press button number 3

    Then I select tab number 1
    Then I enter text "54" into field with id "price"
    Then I enter text "100" into field with id "volume"
    Then I enter text "14" into field with id "odometer"
    Then I press button number 3
    
    Then I select tab number 3
    Then I take a screenshot named "normal_stats__tab_3"
    Then I touch the "Average fuel economy" text
    Then I take a screenshot named "normal_stats__no_license"

  Scenario: Overflow stats
    Then I enter text "98765432112345678900987654321123456789009876543211" into field with id "price"
    Then I enter text "98765432112345678900987654321123456789009876543211" into field with id "volume"
    Then I enter text "98765432112345678900987654321123456789009876543211" into field with id "odometer"
    Then I press button number 3

    Then I select tab number 1
    Then I enter text "98249712374394723984721092831" into field with id "price"
    Then I enter text "98249712374394723984721092831" into field with id "volume"
    Then I enter text "98249712374394723984721092831" into field with id "odometer"
    Then I press button number 3
    
    Then I select tab number 3
    Then I take a screenshot named "overflow_stats__tab_3"
    Then I touch the "Average fuel economy" text
    Then I take a screenshot named "normal_stats__no_license"
