Feature: [SUC:12-04]-Finalize Objection

  @SUC:12-04 @UAT-12-04-01 @UAT-12-01-01
  Scenario: UAT_M7-12-04-01-Finalize Objection
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
    Then Select review results as decreased and amount discharged as "1200"
    Then Save objection application
    Then Case status should be "Objection Finalized"

