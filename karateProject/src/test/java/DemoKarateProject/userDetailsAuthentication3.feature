Feature: call to token genaration feature

Background: 
* def myfeature = call('userDetailsAuthenicationTest2.feature'){"email": "eve.holt@reqres.in","password": "pistol"}
* def authToken = myFeature.accessToken

Scenario: GET call
When url 'https://reqres.in/api/users?page=2'
 #And header Autherization = authToken
 #When method GET
 #Then status 204
Then print 'authToken---',authToken