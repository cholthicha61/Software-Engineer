* Settings *
Documentation     Example test case for opening Chrome browser.
Library           SeleniumLibrary

* Test Cases *
Open Chrome Browser
    Open Browser    http://localhost:8080/th/    Chrome
    Maximize Browser Window
	Click Element    xpath=//a[@title="ลงชื่อเข้าสู่บัญชีผู้ใช้ของท่าน"]
    Element Text Should Be    class:forgot-password    ลืมรหัสผ่าน? 
    Element Text Should Be    class:no-account    ยังไม่มีบัญชี? สร้างใหม่ตรงนี้
    Sleep    2s
	Click Element    xpath=//a[@title="English (English)"]
    Element Text Should Be    class:forgot-password    Forgot your password?
    Element Text Should Be    class:no-account    No account? Create one here
    Sleep    2s
	Click Element    xpath=//a[@title="Bahasa Indonesia (Indonesian)"]
    Element Text Should Be    class:forgot-password    Lupa password Anda? 
    Element Text Should Be    class:no-account    Tidak punya akun? Buat akun disini
    Sleep    2s