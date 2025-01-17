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
Try changing at homepage
    Click Link  http://localhost:8080/gb/
    Click Link  http://localhost:8080/th/
    Click Link  http://localhost:8080/id/
