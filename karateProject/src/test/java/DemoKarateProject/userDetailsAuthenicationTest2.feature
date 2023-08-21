@ignore
Feature: AIP Authentication

  Background: 
    * url 'https://reqres.in/api/register'

  Scenario: Autentication test
    * def params =
      """
      {
      "email": "eve.holt@reqres.in",
      "password": "pistol"
      }
      """
    And form fields params
    When method post
    Then status 200
    And print 'response---',response
 #   * def accessToken = response.access_token
 #   Then print 'accessToken--',accessToken
  #  When path ''
 #   And header Autherizatio = 'Bearer' + accessToken
