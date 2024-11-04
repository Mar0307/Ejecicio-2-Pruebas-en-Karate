Feature: PetStore API

  Background:
      * url 'https://petstore.swagger.io/v2'
      * def userId = 123456
      * def username = 'testuser'
      * def updatedEmail = 'apiteam@swagger.io'
      * def updatedFirstName = 'Updated'

  Scenario: Buscar el usuario actualizado
    Given path 'user', username
    When method get
    Then status 200

    And match response.firstName == updatedFirstName
    And match response.email == updatedEmail
