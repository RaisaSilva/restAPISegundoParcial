Feature: Ejercicio 1

  @Projectos
  Scenario: As admin user
            I want to create and update a user
            So that i am able to use the API of user

    Given I have access to Todo.ly
    When I send a request POST to url http://todo.ly/api/user.json with json
    """
    {
      "Email": "raisa2@silva.com",
      "FullName": "Raisa Silva",
      "Password": "123456789"
    }
    """
    Then I expected response code 200
    And I expected the response body
    """
    {
      "Id": "IGNORE",
      "Email": "raisa2@silva.com",
      "Password": null,
      "FullName": "Raisa Silva",
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
    Given I have access to Todo.ly With Email raisa2@silva.com And Password 123456789
    When I send a request PUT to url http://todo.ly/api/user/0.json with json and my new user
    """
    {
      "FullName": "Raisa Silva"
    }
    """
    Then I expected response code 200
    And I expected the response body
    """
    {
      "Id": ID_USER,
      "Email": "raisa2@silva.com",
      "Password": null,
      "FullName": "Raisa Silva",
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