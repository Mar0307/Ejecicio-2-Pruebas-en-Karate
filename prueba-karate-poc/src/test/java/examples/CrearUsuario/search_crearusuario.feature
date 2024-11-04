Feature: PetStore API - Crear usuario

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def userId = 123456  # ID único para el usuario

  Scenario: Crear un usuario
    Given path 'user'
    And request
    """
      {
      "id": userId,
      "username": "testuser",
      "firstName": "Test",
      "lastName": "User",
      "email": "testuser@example.com",
      "password": "password123",
      "phone": "123456789",
      "userStatus": 1
      }
      """
    When method post
    Then status 200
    And match response == { "code": 200, "type": "unknown", "message": userId.toString() };
