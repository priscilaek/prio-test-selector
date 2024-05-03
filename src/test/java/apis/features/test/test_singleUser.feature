Feature: Get User feature

Background:
  * url 'https://reqres.in'
  * header Content-Type = 'application/json'

Scenario: Retrieve user with valid ID
  Given path '/api/users/1'
  When method get
  Then status 200
  * def expectedResponse = { data: { id: 1, email: '#string', first_name: '#string', last_name: '#string', avatar: '#string' },"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
  And match response == expectedResponse

Scenario: Retrieve user with non-existent ID
  Given path '/api/users/9999'
  When method get
  Then status 404