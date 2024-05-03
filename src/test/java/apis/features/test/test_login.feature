@regression @login
Feature: Login feature

Background:
  * url 'https://reqres.in/api/login'
  * header Content-Type = 'application/json'

Scenario: Verify login with valid credentials
  Given request { email: 'eve.holt@reqres.in', password: 'cityslicka' }
  When method post
  Then status 200
  * def expectedResponse = { 'token': '#string' }
  And match response == expectedResponse

Scenario: Verify login with invalid email
  Given request { email: 'invalidEmail', password: 'cityslicka' }
  When method post
  Then status 400

Scenario: Verify login with missing email
  Given request { password: 'cityslicka' }
  When method post
  Then status 400

Scenario: Verify login with missing password
  Given request { email: 'eve.holt@reqres.in' }
  When method post
  Then status 400