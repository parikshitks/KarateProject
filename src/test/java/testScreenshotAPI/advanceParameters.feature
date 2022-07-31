Feature: Test the screenshot API's with Advanced parameters

Background:
Given url 'https://shot.screenshotapi.net'
And path '/screenshot'

Scenario: Validate advanced parameters from checkbox
And params {"token":"A76P06J-BN34NKE-G4YBKYA-5SWG20J", "url":"https%3A%2F%2Fgoogle.com", "width":"100", "height":"200", "fresh":true, "full_page":true, "output":"json", "block_ads":true, "no_cookie_banners":true, "retina":true ,"file_type":"png", "wait_for_event":"load"}
When method get
Then status 200
And print response
And match response.block_ads == 'true'
And match response.no_cookie_banners == 'true'
And match response.retina == 'true'


Scenario: Negative scenario to valide if an advanced parameter in not present when not taken
And params {"token":"A76P06J-BN34NKE-G4YBKYA-5SWG20J", "url":"https%3A%2F%2Fgoogle.com", "width":"100", "height":"200", "fresh":true, "full_page":true, "output":"json", "block_ads":true, "retina":true ,"file_type":"png", "wait_for_event":"load"}
When method get
Then status 200
And print response
And match response.block_ads == 'true'
And match response.no_cookie_banners == '#notpresent'
And match response.retina == 'true'