Feature: [SUC-12-12]-Lodge Objection - Portal

  Background:
    Given User navigates to portal
    Then Enters the username "1000071227" and password "Password@123" to login to portal

  @SUC-12-12 @UAT-12-12-01
  Scenario: UAT-12-12-01-Lodge Objection
    And Navigate to my tax > Submit an Objection
    Then Enter disputed amount and Objection summary in taxpayer portal
    Then Search for disputed transaction details
#    Then Add attachment "Assesment Copy"
    Then Click next in attachments screen
    Then Submit portal application
    Then Verify portal success message "Your Objection request has been submitted successfully. Your reference number is:"
    Then Obtain portal objection ref number "Your Objection request has been submitted successfully. Your reference number is:"




