Feature: User signs in
  As Devan
  I want to sign in
  So I can see how cool of an application this is

  Scenario: Devan signs in
    Given I am Devan
    And I am not signed in
    When I sign in
    Then I should be on the control center page
    And I should see "Signed in successfully."