Feature: Randomness
  In order to play guessing games
  As a person who owns no dice
  I want to generate random numbers
  
  Scenario: Random number
    Given a random number generator
    When I request a random number
    Then I should see a number
