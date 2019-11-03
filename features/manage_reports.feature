Feature: Manage reports
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new report
    Given I am on the new report page
    When I fill in "Event" with "event 1"
    And I fill in "Username" with "username 1"
    And I fill in "Description" with "description 1"
    And I press "Create"
    Then I should see "event 1"
    And I should see "username 1"
    And I should see "description 1"

  Scenario: Delete report
    Given the following reports:
      |event|username|description|
      |event 1|username 1|description 1|
      |event 2|username 2|description 2|
      |event 3|username 3|description 3|
      |event 4|username 4|description 4|
    When I delete the 3rd report
    Then I should see the following reports:
      |Event|Username|Description|
      |event 1|username 1|description 1|
      |event 2|username 2|description 2|
      |event 4|username 4|description 4|
