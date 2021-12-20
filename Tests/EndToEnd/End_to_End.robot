*** Settings ***
Documentation  Talk about what this suite of tests does
Resource  ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource  ../../Resources/BackOffice/BackOfficeApp.robot
Resource  D:/TestAutomation/Robot/front-office-3/Resources/Common/CommonWeb.robot
Resource    D:/TestAutomation/Robot/front-office-3/Data/InputData.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/EndToEnd/End_to_End.robot

*** Test Cases ***
Should be able to access both sites
    [Documentation]  This is test 1
    [Tags]  Smoke
    FrontOfficeApp.Go to Landing Page
    BackOfficeApp.Go to Landing Page