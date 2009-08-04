Feature: Randomness
  In order to play guessing games
  As a person who owns no dice
  I want to generate random numbers

  Scenario: Random number
    Given a random seed of 12345
    When I request 5 random numbers
    Then I should see the numbers "99,21,73,51,21"
