* Settings *
Documentation     Example test case for opening Chrome browser.
Library           SeleniumLibrary

* Test Cases *
Open Chrome Browser
    Open Browser    http://localhost:8080/th/    Chrome
    Maximize Browser Window
	Click Element    css=img[alt="เสื้อเชิ้ต Logo College of Computing"]
	Element Text Should Be    class:h1    เสื้อเชิ้ต Logo College Of Computing
	Element Text Should Be    class:tax-shipping-delivery-label    รวมภาษีแล้ว
	Sleep    2s
	Click Element    xpath=//a[@title="English (English)"]
	Element Text Should Be    class:h1    T-Shirt College Of Computing Logo
	Element Text Should Be    class:tax-shipping-delivery-label    Tax included
	Sleep    2s
	Click Element    xpath=//a[@title="Bahasa Indonesia (Indonesian)"]
	Element Text Should Be    class:h1    T-Shirt College Of Computing Logo
	Element Text Should Be    class:tax-shipping-delivery-label    Termasuk pajak