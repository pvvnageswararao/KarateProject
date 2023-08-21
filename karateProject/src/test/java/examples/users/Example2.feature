Feature: validate post request

@postExample
Scenario Outline: verify dummy sample rest api post request
Given url '<url>'
And request {"name":"test","salary":"123","age":"23"}
When method post
Then status 200

Examples:
|url|
|https://dummy.restapiexample.com/api/v1/create|