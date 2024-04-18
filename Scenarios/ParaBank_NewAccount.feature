Feature: ParaBank_NewAccount

  Scenario Outline: <UserStoryID> <TestCaseID> Verify ParaBank user is able Open New <ProductType> Account 
    Given I Fetch single row from sheet "ParaBank_TestData" where user story id "<UserStoryID>" and test case id "<TestCaseID>"
    When  I navigated to ParaBank Application
    Then  I should see ParaBank Application Login page
    When  I enter ParaBank user id as "user_id" and password "password" and Click on Login
    Then  I should see ParaBank Home page
    When  I navigate to Open New Account
    And   I select the type of account "<ProductType>"
    And   I click on Open New Account
    Then  I should see "Congratulations, your account is now open" with new account number
    And   I click on ParaBank Signout to signed out successfully
    
  @Regression  
  Examples: 
  |UserStoryID|TestCaseID|ProductType|
  |PB-1002    |PB-1201   | SAVINGS   |
  @Regression  
  Examples: 
  |UserStoryID|TestCaseID|ProductType|
  |PB-1002    |PB-1202   | CHECKING  |
    