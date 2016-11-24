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
    Then there should be a card created for the "Physics" deck
    And I should be on the create card front page
    And I fill in "Question" with "What does the equation E = MC squared measure?"
    And I press "Create Card front"
    Then I should be on the create card back page
    And I fill in "Answer" with "Energy equals mass times the speed of light squared"
    And I press "Create Card back"
    Then I should be on the "Physics" deck page
    And there should be a card with a front and back created

  @javascript
  Scenario: Create multiple choice card
    Given I follow "Add Card"
    And I select "Multiple Choice" from "card_card_type"
    And I press "Create Card"
    Then there should be a card created for the "Physics" deck
    And I should be on the create card front page
    And I fill in "Question" with "Who came up with the equation E = MC squared?"
    And I follow "Add Choice"
    And I fill in "Choice text" with "Albert Einstein"
    And I choose "Yes"
    And I press "Create Card front"
    Then I should be on the "Physics" deck page
    And there should be a card with question "Who came up with the equation E = MC squared?"
    And there should be a card with one choice



