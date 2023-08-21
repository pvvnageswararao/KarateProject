Feature: AIP Authentication

Background:
 * url 'https://reqres.in/api/' 
Scenario: Autentication test

 * def params = 
   """
   {
    "email": "eve.holt@reqres.in",
    "password": "pistol"
}
   """
Given path 'oauth2/token'
And form field grant_type = 'client_credentials'
And form fields params
When method post
Then status 201
And print 'response---',response

* def accessToken = response.access_toke

Given path 'register'
And header Autherization = 'Bearer' + accessToken
When method GET
Then status 200
