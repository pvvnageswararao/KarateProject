Feature: Veriabul Creation on Karate Fremework

  #[1] <GherKin Keyword> <def> <Variable_name> = <Value>
  #[2] <def> <variable_name> = <value>
  Background: 
    * def app_name = "Google"
    * def page_load_timeout = 20

  Scenario: 
    # Use Veriable for repiating value
    # Storing the data from a external file
    # In the  matcher Expression
    # Passing the Data Frome one Feature File to Another
    Given def var_int = 10
    And def var_String = "Karate"
    Then print "Int Variable ==>", var_int
    And print "String Variable ==>", var_String
    * def var_int_2 = var_int + 10
    And print "New Variable ==>", var_int_2
    And print "BackGround Scenario Veriable ==>", app_name, page_load_timeout

  Scenario: Acces the Variable
    * def var_int = 1
    * def var_String = "New"
    * def var_int_2 = var_int + 90
    Given print "Previous Scenario==>", var_int
    And print "Previous Scenario==>", var_String
    And print "Previous Scenario==>", var_int_2
    And print "BackGround Scenario Veriable ==>", app_name, page_load_timeout
