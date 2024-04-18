Feature: ParaBank_RequestLoan

  @Regression
  Scenario: PB-1005 PB-1501 Verify ParaBank user is to able request Loan 
    Given I Fetch single row from sheet "ParaBank_TestData" where user story id "PB-1005" and test case id "PB-1501"
    When  I navigated to ParaBank Application
    Then  I should see ParaBank Application Login page
    When  I enter ParaBank user id as "user_id" and password "password" and Click on Login
    Then  I should see ParaBank Home page
    When  I navigate to Request Loan
    And   I enter Loan information "LoanAmount" "DownPayment" 
    And   I click on Apply Now
    Then  I should see Loan Message "Loan Request Processed" 
    And   I click on ParaBank Signout to signed out successfully