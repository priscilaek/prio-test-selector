Feature: Get Users feature

Background:
  * url 'https://reqres.in/api/users'
  * header Content-Type = 'application/json'

Scenario: Retrieve users with valid page number
  Given param page = 1
  When method get
  Then status 200
  * def expectedResponse = { page: 1, per_page: '#number', total: '#number', total_pages: '#number', data: '#[]', support: { url: '#string', text: '#string' }}
  And match response == expectedResponse

Scenario: Retrieve users with invalid page number
  Given param page = 9999
  When method get
  Then status 200
  * def expectedEmptyPageResponse = { page: 9999, per_page: '#number', total: '#number', total_pages: '#number', data: [], support: { url: '#string', text: '#string' }}
  And match response == expectedEmptyPageResponse