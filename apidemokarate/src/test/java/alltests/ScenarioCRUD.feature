Feature: Тест
  Background:
    * url 'http://162.55.220.72:5008'
  Scenario: Первый тест
    Given path '/first'
    When method get
    Then status 200

    * print '--- result test ---'
    * print response

  Scenario: Второй тест
#
#    def data = {
#    "name": ['Dmitrii'],
#    "age": [35],
#    "salary": [1200]
#  }

    Given path '/user_info_3'
    And request { formData: { name: 'Dmitrii', age: 35, salary: 1200 } }
    When method POST
    Then status 200

  Scenario: Третий тест

    Given path '/object_info_3'
    And param name = 'Dmitrii'
    And param age = 35
    And param salary = 1200
    When method get
    Then status 200

    * print response
