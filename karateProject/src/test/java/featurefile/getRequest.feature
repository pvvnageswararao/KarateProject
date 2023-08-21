Feature: get request method

  Scenario: api user data
    Given url 'https://reqres.in/api/users?page=2' 
    When method get
    Then status 200
    And print response
