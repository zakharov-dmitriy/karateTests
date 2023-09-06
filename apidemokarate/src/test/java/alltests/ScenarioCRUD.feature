Feature: Тест
  Background:
    * url 'http://162.55.220.72:5008'
  Scenario: Первый тест
    Given path '/first'
    When method get
    Then status 200