Feature: Test Orange HRM Application

  Scenario: Validate Login functionality
    Given user is on login page
    When user enter valid credentails
    Then uder on home page and validate home page title
    And user validate Home page URl

  Scenario: Valisate PIM page Functionality
    When user is on PIM page
    Then Validate PIM page url

  Scenario Outline: Validate Add new Functionality
    When user click on add button
    And user enter valid "<firstname>","<middlename>","<lastname>" and save
    And user capture the employee id
    And user click on add employee list
    And user enter employee id and click on search button
    And user select searched Employee and click on delete
    Then validate confirm delete window and click on yes Deleted

    Examples: 
      | firstname | middlename | lastname |
      | abc1      | abc12      | abc123   |
      | xyz1      | xyz12      | xyz123   |

  Scenario: Validate login functionality
    When user click on image
    And user on logout button
