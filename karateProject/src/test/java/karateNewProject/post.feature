@Dibug
Feature: Create a repository for the post methode

  Background: 
    * def requestBody = read('JSONRequest.json')
    * def reponsebody = read('JSONResponse.json')

  Scenario: Api post method JSON 1
    Given url 'http://216.10.245.166/Library/Addbook.php'
    And header Content-Type = 'application/json'
    And request requestBody
    When method post
    Then status 200
   # And print response
   # And match response == reponsebody
   And print "File ==>",reponsebody

  Scenario: Api post method XML 2
    Given url 'http://216.10.245.166/Library/Addbook.php'
    And request
      """
      {
      
      "name":"Learn Appium Automation with Java nn",
      "isbn":"bkjkclmbb",
      "aisle":"2276777",
      "author":"John foe"
      }

      """
    And header Content-Type = 'application/xml'
    When method post
    Then status 200
    And print response
