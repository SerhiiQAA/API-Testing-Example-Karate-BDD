Feature: Karate Based Todos

Background:
    * url apiUrl

Scenario: Get all todos
    Given path ''
    When method Get
    Then status 200

Scenario: Get a single todo
    Given path '5'
    When method Get
    Then status 200

Scenario: Get a random todo
    Given path '/random'
    When method Get
    Then status 200

Scenario: Limit and skip todos
    Given url 'https://dummyjson.com/todos?limit=3&skip=10'
    When method Get
    Then status 200

Scenario: Add a new todo
    Given path '/add'
    And request { todo: 'Use DummyJSON in the project', completed: false, userId: 5 }
    When method Post
    Then status 201
    And print response
