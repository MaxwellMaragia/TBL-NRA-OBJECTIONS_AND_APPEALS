Feature: [SUC:12-02]-Accept Objection

  @SUC:12-02 @UAT-12-01-01 @UAT_M7-12-02-02
  Scenario: UAT_M7-12-02-01-Verify the Process of Verify Application
    Given Open CRM URL Module as "Objectionappealsup1"
    And Close Popup Window
    And Click on Case management dropdown
    And click on Queues
    Then switch to frame0
    And enters service request reference number in search results
    And tick case checkbox
    And pick the case
    Then switch to frame0
    Then Click on reference number
    Then switch to frame1
    And wait for plan to load "Objection Due Date"
    Then switch to frame1
    And Select status as accepted for review
    Then Save objection application
    Then Case status should be "Objection Awaiting Review"



