Feature: PetStore API

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def username = 'testuser'

    Scenario: Eliminar el usuario

      Given path 'user', username
      When method delete
      Then status 200
      And match response == { "code": 200, "type": "unknown", "message": username};


      Given path 'user', username
      When method get
      Then status 404
      And match response.message == 'User not found'
