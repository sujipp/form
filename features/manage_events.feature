Feature: Manage events
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new event
    Given I am on the new event page
    When I fill in "Title" with "title 1"
    And I fill in "Categrory" with "categrory 1"
    And I fill in "Description" with "description 1"
    And I fill in "Location" with "location 1"
    And I fill in "Start" with "start 1"
    And I fill in "End" with "end 1"
    And I fill in "Phone" with "phone 1"
    And I press "Create"
    Then I should see "title 1"
    And I should see "categrory 1"
    And I should see "description 1"
    And I should see "location 1"
    And I should see "start 1"
    And I should see "end 1"
    And I should see "phone 1"

  Scenario: Delete event
    Given the following events:
      |title|categrory|description|location|start|end|phone|
      |title 1|categrory 1|description 1|location 1|start 1|end 1|phone 1|
      |title 2|categrory 2|description 2|location 2|start 2|end 2|phone 2|
      |title 3|categrory 3|description 3|location 3|start 3|end 3|phone 3|
      |title 4|categrory 4|description 4|location 4|start 4|end 4|phone 4|
    When I delete the 3rd event
    Then I should see the following events:
      |Title|Categrory|Description|Location|Start|End|Phone|
      |title 1|categrory 1|description 1|location 1|start 1|end 1|phone 1|
      |title 2|categrory 2|description 2|location 2|start 2|end 2|phone 2|
      |title 4|categrory 4|description 4|location 4|start 4|end 4|phone 4|
