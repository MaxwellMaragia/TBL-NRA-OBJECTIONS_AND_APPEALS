Feature: Withdraw Objection

  Background:
    Given User navigates to the login page
    Then Enters the username "tripsuser" and password "Passw0rd" to login

  @withdraw-objection
  Scenario: To verify the functionality of withdraw objection
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
    When User navigates to Objections and Appeals > Withdraw objection
    Then Search for valid case
    Then Verify case number
    Then Select reason for withdrawal as "Liability Accepted"
    Then Submit objection withdrawal application
    Then Verify success message "Objection withdrawn successfully for Case - "
    When User navigates to Objections and Appeals > Search case status
    Then Search for valid case
    Then Verify case status as "Objection Withdrawn"
