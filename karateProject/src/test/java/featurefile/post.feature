Feature: api testing

  Scenario: post method
    Given url 'https://reqres.in/api/users'
    And request
      """
      {
          "name": "morpheus",
          "job": "leader"
      }
      """
    When method post
    Then status 201
    Then print response
