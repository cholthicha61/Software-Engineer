* Settings *
Documentation     Example test case for opening Chrome browser.
Library           SeleniumLibrary

* Test Cases *
Open Chrome Browser
    Open Browser    http://localhost:8080/th/    Chrome
    Maximize Browser Window
	Click Element    css=a.all-product-link
	Element Text Should Be    class:h2    ลดราคา
	Sleep    2s	
	Click Element    xpath=//a[@title="English (English)"]
	Element Text Should Be    class:h2    PRICES DROP
	Sleep    2s
	Click Element    xpath=//a[@title="Bahasa Indonesia (Indonesian)"]
	Element Text Should Be    class:h2    TURUN HARGA