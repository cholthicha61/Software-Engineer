* Settings *
Library  SeleniumLibrary

* Variables *
${URL}      http://localhost:8080/th/
${BROWSER}  Chrome
${DELAY}  1

* Test Cases *
Open browser
    Open Browser  ${URL}  ${BROWSER}
    SET Selenium Speed  ${DELAY}
Change page to Clothes while in indonesia
    Click Element  id:category-3
    Click Link  http://localhost:8080/gb/3-clothes
    Click Link  http://localhost:8080/id/3-clothes
    Click Link  http://localhost:8080/th/3-clothes
Change page to Accessories while in thai
    Click Element  id:category-6
    Click Link  http://localhost:8080/id/6-accessories
    Click Link  http://localhost:8080/th/6-accessories
    Click Link  http://localhost:8080/gb/6-accessories
    