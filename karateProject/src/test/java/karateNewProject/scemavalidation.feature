Feature: get end point and match response

  Background: 
    * def responseBody = read('scemaAxpectOutput.json')

  Scenario: get wnd point JSON data format and validate a specific property
    Given url 'https://reqres.in/api/users/2'
    When method get
    Then status 200
    And print response
    And match response == responseBody
