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
Go back to first page while in english
    Click Element  id:_desktop_logo
    Click image  http://localhost:8080/24-home_default/hummingbird-printed-t-shirt.jpg
Changing languages in item desc page
    Click Link  http://localhost:8080/id/clothes/1-hummingbird-printed-t-shirt.html
    Click Link  http://localhost:8080/th/clothes/1-hummingbird-printed-t-shirt.html
    Click Link  http://localhost:8080/gb/clothes/1-hummingbird-printed-t-shirt.html
