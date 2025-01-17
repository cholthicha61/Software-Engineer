* Settings *
Documentation     Example test case for opening Chrome browser.
Library           SeleniumLibrary

* Test Cases *
Open Chrome Browser
    Open Browser    http://localhost:8080/th/    Chrome
    Maximize Browser Window
    Element Text Should Be    class:dropdown-item    เสื้อผ้า 
    Element Text Should Be    class:text    รถเข็นของฉัน
    Sleep    2s
	Click Element    xpath=//a[@title="English (English)"]
    Element Text Should Be    class:dropdown-item    Clothes 
    Element Text Should Be    class:text    My Cart
    Sleep    2s
	Click Element    xpath=//a[@title="Bahasa Indonesia (Indonesian)"]
	Element Text Should Be    class:dropdown-item    Pakaian
    Element Text Should Be    class:text    Keranjang Saya