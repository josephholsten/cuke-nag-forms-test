Feature: Submitting form
  cucumber-nagios should be able to submit forms

  Scenario: Visiting home page
    When I go to "http://localhost:4567/"
    And I fill in "username" with "my user"
    And I fill in "password" with "my password"
    And I press "Log In"
    Then the request should succeed
    And I should see "Values: my user, my password"

  Scenario: Visit homepage all at once
    Then I can submit a complete the form in one go
