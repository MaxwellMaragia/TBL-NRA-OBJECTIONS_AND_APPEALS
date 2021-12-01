Feature: [SUC-12-07]-Print Objection and Appeals reports

  Background:
    Given User navigates to the login page
    Then Enters the username "tripsuser" and password "Passw0rd" to login
    And Click reporting > reports

  @SUC-12-07 @UAT-12-07-01
  Scenario: UAT-12-01-01-To verify the process of print status appeal reports
    Then Select report to print "Appeal Reports"
    Then Select report file type "PDF"
    Then Select start date as today
    Then Click run report
    Then Verify file "Appeal Reports.pdf" has been downloaded in downloads directory "C:\\Users\\Maxwell Maragia\\Downloads"
    Then Select report file type "EXCEL"
    Then Click run report
    Then Verify file "Appeal Reports.xls" has been downloaded in downloads directory "C:\\Users\\Maxwell Maragia\\Downloads"

  @SUC-12-07 @UAT-12-07-02
  Scenario: UAT-12-07-02-To verify the process of print status objection reports
    Then Select report to print "Objection Report"
    Then Select report file type "PDF"
    Then Select start date as today
    Then Click run report
    Then Verify file "Objection Report.pdf" has been downloaded in downloads directory "C:\\Users\\Maxwell Maragia\\Downloads"
    Then Select report file type "EXCEL"
    Then Click run report
    Then Verify file "Objection Report.xls" has been downloaded in downloads directory "C:\\Users\\Maxwell Maragia\\Downloads"

  @SUC-12-07 @UAT-12-07-03
  Scenario: UAT-12-07-03-To verify the process of print status Objections Summary Report
    Then Select report to print "Objections Summary Report"
    Then Select report file type "PDF"
    Then Select start date as today
    Then Click run report
    Then Verify file "Objections Summary Report.pdf" has been downloaded in downloads directory "C:\\Users\\Maxwell Maragia\\Downloads"
    Then Select report file type "EXCEL"
    Then Click run report
    Then Verify file "Objections Summary Report.xls" has been downloaded in downloads directory "C:\\Users\\Maxwell Maragia\\Downloads"