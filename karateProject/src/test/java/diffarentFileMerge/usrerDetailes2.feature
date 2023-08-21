Feature: user Detailes

  Background: 
    
    * def expectedOutput = read('../DemoKarateProject/result3.json')
  #  * def feature = read('usgerDetailes1.feature')
    * def result = call read('usgerDetailes1.feature')
 

  Scenario: request user 3 details
    Given url 'https://reqres.in/api/user/3'
    When method GET
    Then status 200
  #  Then print response
    And match response == expectedOutput[1]
    Then print 'relult----',result
    * def name = result.response.data.name
    Then print 'name_value----',name
    
