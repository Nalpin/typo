Feature: Create or edit categories
  As a blog administrator
  In order to manage categories
  I want to be able to create or edit categories at my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I follow "Categories"

  Scenario: Create a new Category
    Given I am on the admin categories page
    When I fill in "category_name" with "Foo"
    And I press "Save"
    Then I should be on the admin categories new page
    And I should see "Category was successfully saved."
    And I should see "Foo"

  Scenario: Edit a Category
    Given I am on the admin categories page
    When I follow "General"
    And I fill in "category_keywords" with "foo-key"
    And I press "Save"
    Then I should be on the admin categories new page
    And I should see "foo-key"