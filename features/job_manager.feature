Feature: Job manager
  In order to manage jobs that have dependencies on each other
  I want to be able to have a job list that all dependencies are satisfied

  Scenario: Empty string input
    Given an empty string input
    When the job manager is run
    Then the output should be an empty sequence 
