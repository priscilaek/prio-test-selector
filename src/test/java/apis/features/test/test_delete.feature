Feature: Delete User feature

Background:
  * url 'https://reqres.in'
  * header Content-Type = 'application/json'

Scenario: Delete user with valid ID
  Given path '/api/users/2'
  When method delete
  Then status 204