*** Settings ***
Library            AppiumLibrary
Resource          ../../resources/mobile/variablesMOBILE.robot

*** Keywords ***
User success open lion parcel apps
    Open Application    http://0.0.0.0:4723  platformName=Android    deviceName=emulator-5556    appPackage=com.lionparcel.services.consumer     appActivity=com.lionparcel.services.consumer.view.splash.BrandingActivity   automationName=uiautomator2    autoGrantPermissions=true

User click agree term notification pop up
    Wait Until Element Is Visible        ${btn_setuju}
    Click Element                        ${btn_setuju}

User click lanjut tanpa login
    Click Element                        ${btn_lanjut_tanpa_akun}
    Wait Until Element Is Visible        ${close_toast_lacak_paket}
    Click Element                        ${close_toast_lacak_paket}

User close pop up on homepage
    Sleep    10s
    Wait Until Element Is Visible        ${btn_next_popup}     timeout=5s
    Click Element                        ${btn_next_popup}
    Click Element                        ${btn_next_popup}
    Click Element                        ${btn_next_popup}
    Click Element                        ${btn_next_popup}
    Wait Until Element Is Visible        ${btn_next_popup}
    Click Element                        ${btn_next_popup}
    Click Element                        ${close_popup_bosspack}

User click menu cek tarif
    Click Element                        ${menu_cek_tarif}

User input origin and destination pengiriman
    Wait Until Element Is Visible        ${field_input_asal}
    Click Element                        ${field_input_asal}
    Wait Until Element Is Visible        ${field_search_kecamatan}
    Click Element                        ${field_search_kecamatan}
    Input Text                           ${field_search_kecamatan}        Cakung
    Wait Until Element Is Visible        ${value_search_kecamatan}
    Click Element                        ${value_search_kecamatan}
    Sleep     5
    Click Element                        ${field_input_tujuan}
    Wait Until Element Is Visible        ${field_search_kecamatan}
    Click Element                        ${field_search_kecamatan}
    Input Text                           ${field_search_kecamatan}        Bandung Kidul
    Wait Until Element Is Visible        ${value_search_kota_tujuan}
    Click Element                        ${value_search_kota_tujuan}
    Wait Until Element Is Visible        ${btn_cek_tarif}
    Click Element                        ${btn_cek_tarif}

User verify tarif delivery
    Wait Until Element Is Visible        ${btn_tambah_detail_paket}
    Scroll Down                          ${wording_total_biaya}
    Wait Until Element is visible        ${wording_total_biaya}     timeout=5s
    Wait Until Element Is Visible        ${price_estimasi_busspack}
    Wait Until Element Is Visible        ${price_estimasi_jumbopack}














      