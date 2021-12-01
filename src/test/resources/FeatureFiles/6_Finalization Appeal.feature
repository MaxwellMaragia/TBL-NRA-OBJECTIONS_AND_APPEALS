Feature: [SUC:12-06]-Finalization Appeal

  @SUC:12-06 @UAT-12-06-01 @UAT-12-01-01 @UAT-12-05-01
  Scenario: UAT_M7-12-04-01-Finalization Appeal Stage One
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
    And wait for plan to load "Appeal Amount"
    Then Select review type and tick check payment receipt numbers
    Then switch to frame1
    And wait for plan to load "Appeal Amount"
    Then switch to frame1
    Then Select appeal stage 1 status as approved
    Then Save appeal application
    Then Case status should be "Appeal Awaiting Approval Stage 2"

  @SUC:12-06 @UAT-12-06-01 @UAT-12-01-01 @UAT-12-05-01
  Scenario: UAT_M7-12-04-01-Finalization Appeal Stage Two
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
    And wait for plan to load "Appeal Amount"
    Then switch to frame1
    Then Select appeal stage two status as approved
    Then Save appeal application
    Then Case status should be "Appeal Awaiting Approval Stage 3"

  @SUC:12-06 @UAT-12-06-01 @UAT-12-01-01 @UAT-12-05-01
  Scenario: UAT_M7-12-04-01-Finalization Appeal Stage Three
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
    And wait for plan to load "Appeal Amount"
    Then switch to frame1
    Then Select appeal stage three status as approved
    Then Enter approval note for stage three
    Then Save appeal application
    Then Case status should be "Appeal Awaiting Finalization"

  @SUC:12-06 @UAT-12-06-01 @UAT-12-01-01 @UAT-12-05-01
  Scenario: UAT_M7-12-04-01-Finalization Appeal Final stage
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
    And wait for plan to load "Appeal Amount"
    Then switch to frame1
    Then Enter finalization decision and amount discharge as "800"
    Then Save appeal application
    Then Case status should be "Appeal Approved"
