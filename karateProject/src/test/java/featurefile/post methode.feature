Feature: post Api methode

Background:
* def responseBody = read('requestBody.json')
Scenario: post json method
Given url 'https://reqres.in/api/users'
And request {"name": "morpheus","job": "leader"}
When method post
Then status 201
And print response
And match response == responseBody
