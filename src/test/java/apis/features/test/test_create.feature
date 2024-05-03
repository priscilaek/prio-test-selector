@regression @create
Feature: Create User feature
 
Background:
  * url 'https://reqres.in/api/users'
  * header Content-Type = 'application/json'

Scenario: Verify creation of a new user with valid data
  Given request { name: 'Shakira', job: 'leader' }
  When method post 
  Then status 201
  * def expectedResponse = { name: 'Shakira', job: 'leader', id: '#string', createdAt: '#string' }
  And match response == expectedResponse