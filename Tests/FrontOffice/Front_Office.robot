*** Settings ***
Documentation  Talk about what this suite of tests does
Resource  ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource  ../../Resources/Common/CommonWeb.robot
Resource    D:/TestAutomation/Robot/front-office-3/Data/InputData.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/Front_Office/FrontOffice.robot


*** Test Cases ***
Should be able to access "Team" page somenting
    [Documentation]  This is test 1
    [Tags]  Regression
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page

"Team" page should match requirements SOMETHING ADDED 
    [Documentation]  This is test 2
    [Tags]  Regression
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page
