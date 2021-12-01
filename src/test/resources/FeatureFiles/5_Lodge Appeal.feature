Feature: [SUC-12-05]-Lodge Appeal

  Background:
    Given User navigates to the login page
    Then Enters the username "tripsuser" and password "Passw0rd" to login

  @SUC-12-05 @UAT-12-05-01 @UAT-12-01-01
  Scenario: UAT-12-05-01-To verify the functionality of lodge appeal
    When User navigates to Objections and Appeals > Lodge appeal
    Then Search for previous objection case
    Then Submit Appeal application
    Then Verify error message "Appeal Amount: Validation Error: Value is required."
    Then Verify error message "Reason for Appeal: Validation Error: Value is required."
    Then Verify error message "Payment Receipt Number: Validation Error: Value is required."
    Then Fill in appeal details with appeal amount "1200"
    Then Submit Appeal application
    Then Verify success message "Appeal lodged successfully for Case"