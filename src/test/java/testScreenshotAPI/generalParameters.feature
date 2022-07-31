Feature: Test the screenshot API's with General parameters

Background:
Given url 'https://shot.screenshotapi.net'
And path '/screenshot'

Scenario: Validate width of the image
And params {"token":"A76P06J-BN34NKE-G4YBKYA-5SWG20J", "url":"https%3A%2F%2Fgoogle.com", "width":"100", "output":"json", "file_type":"png", "wait_for_event":"load"}
When method get
Then status 200
And print response
And match response.width == "100"

Scenario: Validate height of the image
And params {"token":"A76P06J-BN34NKE-G4YBKYA-5SWG20J", "url":"https%3A%2F%2Fgoogle.com", "height":"100", "output":"json", "file_type":"png", "wait_for_event":"load"}
When method get
Then status 200
And print response
And match response.height == "100"

Scenario: Validate width and height of the image
And params {"token":"A76P06J-BN34NKE-G4YBKYA-5SWG20J", "url":"https%3A%2F%2Fgoogle.com", "width":"100", "height":"200", "output":"json", "file_type":"png", "wait_for_event":"load"}
When method get
Then status 200
And print response
And match response.width == "100"
And match response.height == "200"

Scenario: Validate full page and fresh screenshot property of the image
And params {"token":"A76P06J-BN34NKE-G4YBKYA-5SWG20J", "url":"https%3A%2F%2Fgoogle.com", "width":"100", "height":"200", "fresh":true, "full_page":true, "output":"json", "file_type":"png", "wait_for_event":"load"}
When method get
Then status 200
And print response
And match response.width == "100"
And match response.height == "200"
And match response.full_page == 'true'
And match response.fresh == 'true'

Scenario: Negative scenario to valide if a general parameter in not present when not taken
And params {"token":"A76P06J-BN34NKE-G4YBKYA-5SWG20J", "url":"https%3A%2F%2Fgoogle.com", "width":"100", "output":"json", "file_type":"png", "wait_for_event":"load"}
When method get
Then status 200
And print response
And match response.width == "100"
And match response.height == '#notpresent'
And match response.full_page == '#notpresent'
And match response.fresh == '#notpresent'




