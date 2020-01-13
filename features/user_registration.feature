Feature: User registration
   As a first time visitor
   I want to be able to create an account
   So that I can access the members area

  Scenario: I create an account
    Given I am on the homepage
    And I click on the registration link
    When I fill in and submit the registration from
    Then I should see a registration confirmation message
    And I should see my name on the page
    And I should receive a confirmation email

  Scenario: I can't use the same email twice
    Given I already have an account
    When I try to register with the same email
    Then I should see an error message
