*** Settings ***
Resource    ../../resources/mobile/keywordsMOBILE.robot



*** Test Cases ***
User success cek tarif with correct result
    # positif case
    Given User success open lion parcel apps
    When User click agree term notification pop up
    And User click lanjut tanpa login
    And User close pop up on homepage
    And User click menu cek tarif
    And User input origin and destination pengiriman
    Then User verify tarif delivery





