Feature: Reusable function

  #
  #Scenario: verify current whether data reusability
  #Given url 'https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=5e5919bb2f871e564c8c159cfc633ba2'
  #When method get
  #Then status 200
  #And match response.weather[0].description contains 'broken clouds'
  #And match response.weather[0].description == '#string'
  #And match response.weather[0].description == '#number'
  
  
  
  
  Scenario Outline: verify current whether data
    Given url '<url>'
    When method get
    Then status 200
    And match each response.data ==
      """
      {
	"id": "#number",
	"employee_name": "#string",
	"employee_salary": "#number",
	"employee_age": "#number",
	"profile_image": "##string"
	}
      """

    Examples: 
      | url                                               |
      | https://dummy.restapiexample.com/api/v1/employees |
