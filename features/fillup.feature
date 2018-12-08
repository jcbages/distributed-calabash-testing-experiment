Feature: Test Fillup Feature

  Scenario: Save without filling fields
    Then I press button number 3
    Then I take a screenshot named "save_without_filling_fields__end"

  Scenario: Interact with the checkbox
    Then I toggle checkbox number 1
    Then I take a screenshot named "interact_with_the_checkbox__set_checkbox"
    Then I set orientation to landscape
    Then I take a screenshot named "interact_with_the_checkbox__set_landscape"
    Then I toggle checkbox number 1
    Then I take a screenshot named "interact_with_the_checkbox__unset_checkbox"
    Then I set orientation to portrait
    Then I take a screenshot named "interact_with_the_checkbox__set_portrait"

  Scenario: Tap on every editable text
    Then I press view with id "price"
    Then I take a screenshot named "tap_on_every_editable_text__tap_price"
    Then I press view with id "volume"
    Then I take a screenshot named "tap_on_every_editable_text__tap_volume"
    Then I press view with id "odometer"
    Then I take a screenshot named "tap_on_every_editable_text__tap_odometer"

  Scenario: Write non numeric characters
    Then I enter text "-321ßå∂˚¡–ºß123" into field with id "price"
    Then I take a screenshot named "write_non_numeric_characters__write_price"
    Then I enter text "åß9∂º–ç¬  ß29å∂˚¡–ºß123" into field with id "volume"
    Then I take a screenshot named "write_non_numeric_characters__write_volume"
    Then I enter text "=+œå∑ß≈´∂ç®ƒ√†©∫¡™£" into field with id "odometer"
    Then I take a screenshot named "write_non_numeric_characters__write_odometer"

  Scenario: Write zero on editable
    Then I enter text "000" into field with id "price"
    Then I press button number 3
    Then I take a screenshot named "write_zero_on_editable__write_price"
    Then I enter text "000" into field with id "volume"
    Then I press button number 3
    Then I take a screenshot named "write_zero_on_editable__write_volume"
    Then I enter text "000" into field with id "odometer"
    Then I press button number 3
    Then I take a screenshot named "write_zero_on_editable__write_odometer"

  Scenario: Write good scenario text
    Then I enter text "23" into field with id "price"
    Then I take a screenshot named "write_good_scenario_text__write_price"
    Then I enter text "49" into field with id "volume"
    Then I take a screenshot named "write_good_scenario_text__write_volume"
    Then I enter text "12" into field with id "odometer"
    Then I take a screenshot named "write_good_scenario_text__write_odometer"
    Then I press button number 3
    Then I take a screenshot named "write_good_scenario_text__save"
    Then I select tab number 2
    Then I take a screenshot named "write_good_scenario_text__history"

  Scenario: Write large text
    Then I enter text "98765432112345678900987654321123456789009876543211" into field with id "price"
    Then I take a screenshot named "write_large_text__write_price"
    Then I enter text "98765432112345678900987654321123456789009876543211" into field with id "volume"
    Then I take a screenshot named "write_large_text__write_volume"
    Then I enter text "98765432112345678900987654321123456789009876543211" into field with id "odometer"
    Then I take a screenshot named "write_large_text__write_odometer"
    Then I press button number 3
    Then I take a screenshot named "write_large_text__save"
    Then I select tab number 2
    Then I take a screenshot named "write_large_text__history"
