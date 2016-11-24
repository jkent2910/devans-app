Feature: User creates a deck
  As Devan
  I want to create a deck
  So that I can add cards to it

  Background:
    Given I am Devan
    And I am signed in

  Scenario: Create new deck
    Given I follow "Create New Deck"
    And I fill in "Name" with "Physics"
    And I select "Science" from "Category"
    And I press "Create Deck"
    Then there should be a deck with name "Physics" created
    And I should be on the "Physics" deck page

