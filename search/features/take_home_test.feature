Feature: Enrolling in a course

  as a user of Teachable
  I want to be able to go through all lectures and complete a course
  So any potential customer can learn from Teachable

  Scenario: Complete Course
    Given I am logged in on the Homepage
    When I select the featured course
    And I complete the course
    Then the course should show 100% complete
