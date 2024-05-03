Feature: Update User feature

Background:
  * url 'https://reqres.in'
  * header Content-Type = 'application/json'
  
Scenario: Verify update user with valid data
  Given path '/api/users/751'
  And request { name: 'shakira', job: 'zion resident' }
  When method put
  Then status 200
  * def expectedResponse = { name: 'shakira', job: 'zion resident', updatedAt: '#string' }
  And match response == expectedResponse