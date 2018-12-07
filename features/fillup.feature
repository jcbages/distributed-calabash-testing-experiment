Feature: Test Fillup Feature

  Scenario: Save without filling fields
    Then I press button number 3
    Then I take a screenshot

  Scenario: Interact with the checkbox
    Then I toggle checkbox number 1
    Then I take a screenshot
    Then I set orientation to landscape
    Then I take a screenshot
    Then I toggle checkbox number 1
    Then I take a screenshot
    Then I set orientation to portrait
    Then I take a screenshot

  Scenario: Tap on every editable text
    Then I press view with id "price"
    Then I take a screenshot
    Then I press view with id "volume"
    Then I take a screenshot
    Then I press view with id "odometer"
    Then I take a screenshot

  Scenario: Write non numeric characters on editable text
    Then I enter text "-321ßå∂˚¡–ºß123" into field with id "price"
    Then I take a screenshot
    Then I enter text "åß9∂º–ç¬  ß29å∂˚¡–ºß123" into field with id "volume"
    Then I take a screenshot
    Then I enter text "=+œå∑ß≈´∂ç®ƒ√†©∫¡™£" into field with id "odometer"
    Then I take a screenshot

  Scenario: Write zero on editable text
    Then I enter text "000" into field with id "price"
    Then I press button number 3
    Then I take a screenshot
    Then I enter text "000" into field with id "volume"
    Then I press button number 3
    Then I take a screenshot
    Then I enter text "000" into field with id "odometer"
    Then I press button number 3
    Then I take a screenshot

  Scenario: Write good scenario text
    Then I enter text "23" into field with id "price"
    Then I take a screenshot
    Then I enter text "49" into field with id "volume"
    Then I take a screenshot
    Then I enter text "12" into field with id "odometer"
    Then I take a screenshot
    Then I press button number 3
    Then I take a screenshot
    Then I select tab number 2
    Then I take a screenshot

  Scenario: Write very large text on editable text
    Then I enter text "98765432112345678900987654321123456789009876543211" into field with id "price"

    Then I take a screenshot

    Then I enter text "98765432112345678900987654321123456789009876543211" into field with id "volume"

    Then I take a screenshot

    Then I enter text "98765432112345678900987654321123456789009876543211" into field with id "odometer"

    Then I take a screenshot
    Then I press button number 3
    Then I take a screenshot
    Then I select tab number 2
    Then I take a screenshot
