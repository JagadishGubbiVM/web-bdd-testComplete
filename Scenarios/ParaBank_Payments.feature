Feature: ParaBank_Payments

  @Regression
  Scenario: PB-1004 PB-1401 Verify ParaBank user is able to send Payment 
    Given I Fetch single row from sheet "ParaBank_TestData" where user story id "PB-1004" and test case id "PB-1401"
    When  I navigated to ParaBank Application
    Then  I should see ParaBank Application Login page
    When  I enter ParaBank user id as "user_id" and password "password" and Click on Login
    Then  I should see ParaBank Home page
    When  I navigate to Bill Pay
    And   I enter payee information "PayeeName" "Address" "City" "State" "ZipCode" "Phone"
    And   I enter account information "AccountNumber" "VerifyAccount" "Amount"
    And   I click on Send Payment
    Then  I should see Payment Message "Bill Payment Complete" 
    And   I click on ParaBank Signout to signed out successfully