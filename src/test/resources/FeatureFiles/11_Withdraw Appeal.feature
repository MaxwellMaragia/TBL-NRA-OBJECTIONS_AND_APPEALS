Feature: Withdraw Appeal

  @withdraw-appeal
  Scenario: Lodge Objection
    Given User navigates to the login page
    Then Enters the username "tripsuser" and password "Passw0rd" to login
    When User navigates to Objections and Appeals > Lodge objection
    Then Searches for taxpayer tin "1000071227"
    Then Submit Objection Application
    Then Verify error message "Disputed Amount: Validation Error: Value is required."
    Then Verify error message "Summary Of Objection: Validation Error: Value is required."
    Then Enter disputed amount "8000" and summary of objection
    Then Enter disputed transaction details with period number "1" and period year "2020" and document type "Manual Penalty"
    Then Enter attachment schedule "Assesment Copy"
    Then Submit Objection Application
    Then Verify success message "Objection lodged successfully with reference number"
    Then Obtain Objection Case number "Objection lodged successfully with reference number"

  @withdraw-appeal
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

  @withdraw-appeal
  Scenario: UAT_M7-12-03-01- Review Objection
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
    And Select status as accepted for finalization
    Then Enter Approval note
    Then Save objection application
    Then Case status should be "Objection Awaiting Finalization"

  @withdraw-appeal
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

  @withdraw-appeal @boom
  Scenario: To verify the functionality of withdraw appeal
    Given User navigates to the login page
    Then Enters the username "tripsuser" and password "Passw0rd" to login
    When User navigates to Objections and Appeals > Lodge appeal
    Then Search for previous objection case
    Then Fill in appeal details with appeal amount "1200"
    Then Submit Appeal application
    Then Verify success message "Appeal lodged successfully for Case"
    When User navigates to Objections and Appeals > Withdraw appeal
    Then Search for valid case
    Then Verify case number for appeal
    Then Select reason for appeal withdrawal as "Liability Accepted"
    Then Submit appeal withdrawal application
    Then Verify success message "Appeal withdrawn successfully for Case - "
    When User navigates to Objections and Appeals > Search case status
    Then Search for valid case
    Then Verify case status as "Appeal Withdrawn"