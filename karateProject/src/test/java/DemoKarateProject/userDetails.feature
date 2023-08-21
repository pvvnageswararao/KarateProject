 Feature: user Detailes

  Background: 
    * def expectedOutput1 = read('result1.json')
    * def expectedOutput2 = read('result4.json')

  Scenario: request user 2 details
    Given url 'https://reqres.in/api/user/2'
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput1
@debug
  Scenario: request user 3 details
    Given url 'https://reqres.in/api/user/3'
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput2
