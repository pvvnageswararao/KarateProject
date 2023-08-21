Feature: post call test

  Background: 
    * def jsonPayload = read('requestBody.json')
    * url 'https://reqres.in/api/users'
    * header Conten-Type = 'application/json'

  Scenario: Creat user Details
    And request jsonPayload
    And param delay = 3
    # And header Content-Type = 'application/json'
    #And header {Content-Type:'application/json',Accept:'application/json'}
    When method post
    Then status 201
    And print 'response---',response
