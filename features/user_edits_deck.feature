Feature: User edits a deck
  As Devan
  I want to edit a deck
  So that I can change the name if I want

  Background:
    Given I am Devan
    And I am signed in

  Scenario: Delete deck
    Given there is a deck with name "Physics" in the "Science" category
    And I am on the decks page
    And I follow "Edit"
    And I fill in "Name" with "Biology"
    And I press "Update Deck"
    Then there should not be a deck named "Physics"
    And there should be a deck named "Biology"
    And I should be on the "Biology" deck page
