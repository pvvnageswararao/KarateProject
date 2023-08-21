Feature: post api Add place id

  Background: 
    * url 'https://rahulshettyacademy.com'
    * def requestBody = read('request.json')

  Scenario: post Detailes Api
    Given path '/maps/api/place/add/json'
    And request requestBody
    When method post
    Then status 200
    And print response

