Feature: ParaBank_Login 

  @Regression
  Scenario: PB-1001 PB-1101 Verify login is successful for ParaBank user
    Given I Fetch single row from sheet "ParaBank_TestData" where user story id "PB-1001" and test case id "PB-1101"
    When  I navigated to ParaBank Application
    Then  I should see ParaBank Application Login page
    When  I enter ParaBank user id as "user_id" and password "password" and Click on Login
    Then  I should see ParaBank Home page
    And   I click on ParaBank Signout to signed out successfully