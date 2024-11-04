Feature: PetStore API

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def userId = 123456  # ID único para el usuario
    * def username = 'testuser'
    * def initialPayload =
        """
        {
        "id": userId,
        "username": username,
        "firstName": "Test",
        "lastName": "User",
        "email": "apiteam@swagger.io",
        "password": "password123",
        "phone": "123456789",
        "userStatus": 1
        }
        """
  Scenario: Actualizar nombre y correo del usuario
    Given path 'user'
    And request initialPayload
    When method post
    Then status 200
    And match response == { "code": 200, "type": "unknown", "message": userId.toString() }

    * def updatedPayload = initialPayload
    * updatedPayload.firstName = 'Updated'
    * updatedPayload.email = 'apiteam@swagger.io'

    Given path 'user', username
    And request updatedPayload
    When method put
    Then status 200
    And match response == { "code": 200, "type": "unknown", "message": userId.toString() }
