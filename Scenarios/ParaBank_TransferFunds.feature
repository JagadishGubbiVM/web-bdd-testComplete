Feature: ParaBank_TransferFunds

  @Regression
  Scenario: PB-1003 PB-1301 Verify ParaBank user is able to TransferFunds between own Accounts 
    Given I Fetch single row from sheet "ParaBank_TestData" where user story id "PB-1003" and test case id "PB-1301"
    When  I navigated to ParaBank Application
    Then  I should see ParaBank Application Login page
    When  I enter ParaBank user id as "user_id" and password "password" and Click on Login
    Then  I should see ParaBank Home page
    When  I navigate to Transfer Funds
    And   I Select "fromAccount" "toAccount" and "Amount"
    And   I click on Transfer
    Then  I should see "Transfer Complete" 
    And   I click on ParaBank Signout to signed out successfully
    