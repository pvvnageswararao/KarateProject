Feature: user details

Scenario: get call test
Given url 'https://reqres.in/api/users/2'
When method Get
Then status 200
And print response
* def expectedoutput = read('result.json')

And match response == expectedoutput
And match response.deta.id == 2
And match response.data.last_name != null
* def job_code = response.data.job_code
And match job_code=null