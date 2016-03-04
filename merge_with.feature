Feature: Merge Articles
  As a blog administrator
  In order to have text about same topic in one place
  I want to be able to merge similar articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
  
  Scenario: Merge articles
    Given I am on the edit article page for "Hello World!"
    And I fill in "merge_with" with "5"
    And I press "Merge"
    Then I should be on the "Hello World!" page
    And I should see "Hello World!"
    And I should see "Welcome to Typo. This is your first article. Edit or delete it, then start blogging!"
    And I should see "Should be merged with Hello World!"
    And I should see "This is the first comment."
    And I should see "This is another comment."
    And I should see "This is the second comment."
    Given I am on the admin content page
    Then I should see "admin"
  

     
