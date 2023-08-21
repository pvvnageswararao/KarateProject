Feature: Goole Mpas

  Background: 
    * url 'https://rahulshettyacademy.com'
    * def AddPlaceRes = call read('postAPI.feature')
    * def placeId = AddPlace.response.place_id
    * def requestbody = read('response.json')
    And print placeId

  Scenario: update placeId
    Given path '/maps/api/place/update/json'
    * get requestbody.place_id = placeId
    And request requesrbody
    When method put
    Then status 200
