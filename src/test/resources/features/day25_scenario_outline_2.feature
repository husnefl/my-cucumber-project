@data_tables
Feature: data_tables

  Scenario Outline: TC_Create _And verify the test data creation

#    Crating a reusable step that accept url and goes to that url
    Given user is on "https://editor.datatables.net/" page
    And user clicks on the new button
    And user enters the first name "<firstname>"
    And user enters the last name "<lastname>"
    And user enters the position "<position>"
    And user enters office "<office>"
    And user enters extension "<extension>"
    And user enters start date "<start_date>"
    And user enters the salary "<salary>"
    And click on create button
    And search for the first name "<firstname>"
    Then verify the name field contains the first name "<firstname>"
    Then close the application

    Examples: test_data
      | firstname | lastname | position    | office | extension | start_date | salary  |
      | john      | smith    | tester      | NYC    | 2134      | 2023-01-23 | 80000   |
      | sam       | walton   | businessman | LA     | 5262      | 2023-01-24 | 2000000 |
      | nancy     | brown    | developer   | Dallas | 2346      | 2023-01-25 | 85000   |
      | george    | bush     | politician  | Dallas | 9931      | 2023-01-26 | 985000  |

#Scenario Outline:
#What is it?
#It is used to run the same scenario with different data multiple times
#It must be followed by an Examples keyword. Examples keyword is used to pass data
#Scenario Outline is used for parametrizating of the feature files
#It is used to pass test data dynamically
#This is very common and use ful in cucumber
#Cucumber reports plugins
#We can easily generate cucumber reports using report plugins in the runner
#We can generate different reports such as HTML, json, and xml; but the most common one is the HTML report
#
#DataTables are user to pass test data
#We especially use DataTables for passing multiple data
#DataTables are similar to Scenario Outline
#Difference between DataTables and Scenario Outline?
#In DataTables No Examples keyword
#DataTables can be use in ANY STEP to provide data, but Examples keyword can ONLY be used at the end of the
#scenario to provide data
#In DataTables, use Scenario:
#In Scenario Outline: use Scenario Outline and Examples
#DataTables returns DataTables object in the method, so we have to use Collections to use them in the step
#definitions
#Scenario Outline returns a string in the method, so it is easier to get and use.
#DataTables are not as popular as Scenario Outline.
#