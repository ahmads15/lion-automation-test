*** Settings ***
Library             Selenium2Library
Resource          ../../resources/web/keywordsWEB.robot

*** Test Cases ***
User success checkout item
    Given Open Sauce Demo website in chrome
    When User success input username and password
    And User add to cart item backpack
    And User click icon cart
    And User verify item on cart page
    And User click button checkout on cart page
    And User success input information data checkout
    And User click button continue checkout
    And User verify value data on checkout page
    And User click button finish checkout
    Then User verify success order

    
Close Browser
    Given Close The Browser