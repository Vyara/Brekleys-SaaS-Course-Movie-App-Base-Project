Feature: Merge Articles non admin

  Scenario: Merge articles when non admin
    Given the blog is set up
    And I am not logged into the admin panel
    And I am on the new article page
    Then I should not see "Merge Articles"
