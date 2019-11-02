Feature: Manage users
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new user
    Given I am on the new user page
    When I fill in "Username" with "username 1"
    And I fill in "Email" with "email 1"
    And I fill in "Phone" with "phone 1"
    And I press "Create"
    Then I should see "username 1"
    And I should see "email 1"
    And I should see "phone 1"

  Scenario: Delete user
    Given the following users:
      |username|email|phone|
      |username 1|email 1|phone 1|
      |username 2|email 2|phone 2|
      |username 3|email 3|phone 3|
      |username 4|email 4|phone 4|
    When I delete the 3rd user
    Then I should see the following users:
      |Username|Email|Phone|
      |username 1|email 1|phone 1|
      |username 2|email 2|phone 2|
      |username 4|email 4|phone 4|
