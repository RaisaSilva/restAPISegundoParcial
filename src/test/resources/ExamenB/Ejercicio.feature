Feature: Ejercicio 1

  @User
  Scenario: As admin
  I want to create and update an user
  So that I use the API

    Given I have access to Todo.ly with email raisa@silva.com and password paz9uord
    When I send a request POST to url http://todo.ly/api/user.json with json
    """
    {
      "Email": "raisa@silva.com",
      "FullName": "Raisa Alejandra Silva Plata",
      "Password": "paz9uord"
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

    When I send a request PUT to url http://todo.ly/api/user/0.json with json and my new user
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

    When I send a request DELETE to url http://todo.ly/api/user/0.json with json and my new user
    """

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