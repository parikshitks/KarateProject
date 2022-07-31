Feature: Test the screenshot API's error messages

Background:
Given url 'https://shot.screenshotapi.net'
And path '/screenshot'


Scenario: Negative scenario to validate error message when incorrect integer value is provided
And params {"token":"A76P06J-BN34NKE-G4YBKYA-5SWG20J", "url":"https%3A%2F%2Fgoogle.com", "width":"1j00", "output":"json", "file_type":"png", "wait_for_event":"load"}
When method get
Then status 500
And print response
And match response.error == "invalid input syntax for type integer: \"1j00\""


Scenario: Negative scenario to validate error message when incorrect script url provided
And params {"token":"A76P06J-BN34NKE-G4YBKYA-5SWG20J", "url":"https%3A%2F%2Fgoogle.com", "width":"100", "js_url":24324, "output":"json", "file_type":"png", "wait_for_event":"load"}
When method get
Then status 500
And print response
And match response.error == "page.addScriptTag: Evaluation failed: Error: Failed to load script at https://www.google.com/24324\n    at script.onerror (eval at evaluate (:338:25), <anonymous>:8:74)"

