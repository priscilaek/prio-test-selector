Feature: Register feature

Background:
  * url 'https://reqres.in/api/register'
  * header Content-Type = 'application/json'

Scenario: Verify registration with valid credentials
  Given request { email: 'eve.holt@reqres.in', password: 'pistol' }
  When method post
  Then status 200
  * def expectedResponse = { 'id': '#number', 'token': '#string' }
  And match response == expectedResponse

Scenario: Verify registration with invalid email
  Given request { email: 'invalidEmail', password: 'pistol' }
  When method post
  Then status 400

Scenario: Verify registration with missing email
  Given request { password: 'pistol' }
  When method post
  Then status 400

Scenario: Verify registration with missing password
  Given request { email: 'eve.holt@reqres.in' }
  When method post
  Then status 400