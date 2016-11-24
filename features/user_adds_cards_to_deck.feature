Feature: User adds cards to deck
  As Devan
  I want to add cards to a deck
  So that I can start learning

  Background:
    Given I am Devan
    And I am signed in
    And there is a deck with name "Physics" in the "Science" category
    And I am on the "Physics" deck page

  Scenario: Create basic card
    Given I follow "Add Card"
    And I select "Basic" from "card_card_type"
    And I press "Create Card"
    Then there should be a card created
    And I should be on the create card front page
    And I fill in "Question" with "What does the equation E = MC squared measure?"
    And I press "Create Card front"
    Then I should be on the create card back page
    And I fill in "Answer" with "Energy equals mass times the speed of light squared"
    And I press "Create Card back"
    Then I should be on the "Physics" deck page
    And there should be a card with a front and back created

