Feature: To Execute the Java Script Function

  Scenario: Executr Java Script Function With and Without parameter
    * def getInValue = function() { return 10;}
    Then print "Function Value =>", getInValue()
    * def getRandomValue = function() {return Math.floor((100) * Math.random());}
    Then print "Function Value =>", getRandomValue()
    * def getStringValue = function(arg1) {return "Hello" + arg1}
    Then print "Function Value =>", getStringValue()
 