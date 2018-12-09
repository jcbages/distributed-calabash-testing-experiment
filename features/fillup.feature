Feature: Test Fillup Feature

  Scenario: Save without filling fields
    Then I wait for 0.2 seconds
    Then I press button number 3
    Then I take a screenshot named "save_without_filling_fields__end"

  Scenario: Interact with the checkbox
    Then I wait for 0.2 seconds
    Then I toggle checkbox number 1
    Then I take a screenshot named "interact_with_the_checkbox__set_checkbox"
    
    Then I wait for 0.2 seconds
    Then I toggle checkbox number 1
    Then I take a screenshot named "interact_with_the_checkbox__unset_checkbox"

  Scenario: Write non numeric characters
    Then I wait for 0.2 seconds
    Then I enter text "-321ßå∂˚¡–ºß123" into field with id "price"
    Then I take a screenshot named "write_non_numeric_characters__write_price"
    
    Then I wait for 0.2 seconds
    Then I enter text "åß9∂º–ç¬  ß29å∂˚¡–ºß123" into field with id "volume"
    Then I take a screenshot named "write_non_numeric_characters__write_volume"
    
    Then I wait for 0.2 seconds
    Then I enter text "=+œå∑ß≈´∂ç®ƒ√†©∫¡™£" into field with id "odometer"
    Then I take a screenshot named "write_non_numeric_characters__write_odometer"

  Scenario: Write zero on editable
    Then I wait for 0.2 seconds
    Then I enter text "000" into field with id "price"
    
    Then I wait for 0.2 seconds
    Then I press button number 3
    Then I take a screenshot named "write_zero_on_editable__write_price"
    
    Then I wait for 0.2 seconds
    Then I enter text "000" into field with id "volume"
    
    Then I wait for 0.2 seconds
    Then I press button number 3
    Then I take a screenshot named "write_zero_on_editable__write_volume"
    
    Then I wait for 0.2 seconds
    Then I enter text "000" into field with id "odometer"
    
    Then I wait for 0.2 seconds
    Then I press button number 3
    Then I take a screenshot named "write_zero_on_editable__write_odometer"

  Scenario: Write good scenario text
    Then I wait for 0.2 seconds
    Then I enter text "23" into field with id "price"
    Then I take a screenshot named "write_good_scenario_text__write_price"
    
    Then I wait for 0.2 seconds
    Then I enter text "49" into field with id "volume"
    Then I take a screenshot named "write_good_scenario_text__write_volume"
    
    Then I wait for 0.2 seconds
    Then I enter text "12" into field with id "odometer"
    Then I take a screenshot named "write_good_scenario_text__write_odometer"
    
    Then I wait for 0.2 seconds
    Then I press button number 3
    Then I take a screenshot named "write_good_scenario_text__save_1"
    
    Then I wait for 0.2 seconds
    Then I select tab number 1
    
    Then I wait for 0.2 seconds
    Then I enter text "54" into field with id "price"

    Then I wait for 0.2 seconds
    Then I enter text "100" into field with id "volume"

    Then I wait for 0.2 seconds
    Then I enter text "14" into field with id "odometer"

    Then I wait for 0.2 seconds
    Then I press button number 3
    Then I take a screenshot named "write_good_scenario_text__save_2"

    Then I wait for 0.2 seconds
    Then I press list item number 1
    Then I take a screenshot named "write_good_scenario_text__item1"
    
    Then I wait for 0.2 seconds
    Then I press button number 2
    Then I take a screenshot named "write_good_scenario_text__item2"
    
    Then I wait for 0.2 seconds
    Then I press button number 1
    Then I take a screenshot named "write_good_scenario_text__item1_again"

    Then I wait for 0.2 seconds
    Then I select tab number 3
    Then I take a screenshot named "write_good_scenario_text__tab_3"
    
    Then I wait for 0.2 seconds
    Then I touch the "Average fuel economy" text
    Then I take a screenshot named "write_good_scenario_text__no_license"

  Scenario: Write large text
    Then I wait for 0.2 seconds
    Then I enter text "98879898249712372391" into field with id "price"
    Then I take a screenshot named "write_large_text__write_price"

    Then I wait for 0.2 seconds
    Then I enter text "98879891284721092831" into field with id "volume"
    Then I take a screenshot named "write_large_text__write_volume"

    Then I wait for 0.2 seconds
    Then I enter text "74394723984721092831" into field with id "odometer"
    Then I take a screenshot named "write_large_text__write_odometer"

    Then I wait for 0.2 seconds
    Then I press button number 3
    Then I take a screenshot named "write_large_text__save_1"
    
    Then I wait for 0.2 seconds
    Then I select tab number 1

    Then I wait for 0.2 seconds
    Then I enter text "97123743947239847210" into field with id "price"

    Then I wait for 0.2 seconds
    Then I enter text "98123743947721092831" into field with id "volume"

    Then I wait for 0.2 seconds
    Then I enter text "98879898284721092831" into field with id "odometer"

    Then I wait for 0.2 seconds
    Then I press button number 3
    Then I take a screenshot named "write_large_text__save_2"

    Then I wait for 0.2 seconds
    Then I press list item number 1
    Then I take a screenshot named "write_large_text__item1"

    Then I wait for 0.2 seconds
    Then I press button number 2
    Then I take a screenshot named "write_large_text__item2"

    Then I wait for 0.2 seconds
    Then I press button number 1
    Then I take a screenshot named "write_large_text__item1_again"

    Then I wait for 0.2 seconds
    Then I select tab number 3
    Then I take a screenshot named "write_large_text__tab_3"

    Then I wait for 0.2 seconds
    Then I touch the "Average fuel economy" text
    Then I take a screenshot named "write_large_text__no_license"