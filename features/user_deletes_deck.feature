Feature: User creates a deck
  As Devan
  I want to delete a deck
  So that I don't see it anymore

  Background:
    Given I am Devan
    And I am signed in

  Scenario: Delete deck
    Given there is a deck with name "Physics" in the "Science" category
    And I am on the decks page
    And I follow "Delete"
    Then there should not be a deck named "Physics"
    And I should be on the decks page
