Feature: Ejercicio 1

  @Projectos
  Scenario: As admin user
            I want to create and update a user
            So that i am able to use the API of user

    Given I have access to Todo.ly
    When I send a request POST to url http://todo.ly/api/user.json with json
    """
    {
      "Email": "raisa@silva.com",
      "FullName": "Raisa Alejandra Silva Plata",
      "Password": "password12345678"
    }
    """
    Then I expected response code 200
    And I expected the response body
    """
    {
      "Id": "IGNORE",
      "Email": "raisa@silva.com",
      "Password": null,
      "FullName": "Raisa Alejandra Silva Plata",
      "TimeZone": 0,
      "IsProUser": false,
      "DefaultProjectId": "IGNORE",
      "AddItemMoreExpanded": false,
      "EditDueDateMoreExpanded": false,
      "ListSortType": 0,
      "FirstDayOfWeek": 0,
      "NewTaskDueDate": "IGNORE",
      "TimeZoneId": "IGNORE"
    }
    """
    And I get the property Id save on ID_USER
    When I send a request PUT to url http://todo.ly/api/user/0.json with json
    """
    {
      "FullName": "Raisa Alejandra Silva Plata"
    }
    """
    Then I expected response code 200
    And I expected the response body
    """
    {
      "Id": ID_USER,
      "Email": "raisa@silva.com",
      "Password": null,
      "FullName": "Raisa Alejandra Silva Plata",
      "TimeZone": 0,
      "IsProUser": false,
      "DefaultProjectId": "IGNORE",
      "AddItemMoreExpanded": false,
      "EditDueDateMoreExpanded": false,
      "ListSortType": 0,
      "FirstDayOfWeek": 0,
      "NewTaskDueDate": "IGNORE",
      "TimeZoneId": "IGNORE"
    }
    """