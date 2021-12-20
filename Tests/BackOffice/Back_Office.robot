*** Settings ***
Documentation  Talk about what this suite of tests does
Resource  ../../Resources/BackOffice/BackOfficeApp.robot
Resource  ../../Resources/Common/CommonWeb.robot
Resource    D:/TestAutomation/Robot/front-office-3/Data/InputData.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/BackOffice/Back_Office.robot


*** Test Cases ***
Should be able to access "Landing" page
    [Documentation]  This is test 1
    [Tags]  Smoke
    BackOfficeApp.Go to Landing Page
