* Settings *
Documentation     Example test case for opening Chrome browser.
Library           SeleniumLibrary

* Test Cases *
Open Chrome Browser
    Open Browser    http://localhost:8080/th/    Chrome
    Maximize Browser Window
	Click Element    id:category-6
	Element Text Should Be    class:h1    อุปกรณ์เสริม
	Element Text Should Be    class:h6    ผู้จัดหาสินค้า
	Sleep    2s
	Click Element    xpath=//a[@title="English (English)"]
	Element Text Should Be    class:h1    ACCESSORIES
	Element Text Should Be    class:h6    SUPPLIERS
	Sleep    2s
	Click Element    xpath=//a[@title="Bahasa Indonesia (Indonesian)"]
	Element Text Should Be    class:h1    AKSESORIS
	Element Text Should Be    class:h6    PEMASOK
	Sleep    2s