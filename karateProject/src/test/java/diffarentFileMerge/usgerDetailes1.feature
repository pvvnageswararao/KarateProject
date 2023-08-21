Feature: user Detailes


Scenario: request user 2 details
    Given url 'https://reqres.in/api/user/2'
    When method GET
    Then status 200
    Then print response
#    And match response == expectedOutput[0]