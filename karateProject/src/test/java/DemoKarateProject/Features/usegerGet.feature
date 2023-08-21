Feature: user Detailes

  Background: 
     * def expectedOutput = read('../../DemoKarateProject/result3.json')
   # * def expectedOutput = read('NewData/result3.json')

  Scenario: request user 2 details
    Given url 'https://reqres.in/api/user/2'
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput[0]

  Scenario: request user 3 details
    Given url 'https://reqres.in/api/user/3'
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput[1]
