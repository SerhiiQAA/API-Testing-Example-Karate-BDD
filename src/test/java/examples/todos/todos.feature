Feature: Karate Based Todos

Background:
    * url 'https://dummyjson.com/todos'

Scenario: Get all todos
    Given url 'https://dummyjson.com/todos'
    When method Get
    Then status 200

Scenario: Get a single todo
    Given url 'https://dummyjson.com/todos/1'
    When method Get
    Then status 200

Scenario: Get a random todo
    Given url 'https://dummyjson.com/todos/random'
    When method Get
    Then status 200

Scenario: Limit and skip todos
    Given url 'https://dummyjson.com/todos?limit=3&skip=10'
    When method Get
    Then status 200

#Feature: Test API with Karate

Scenario: Add a new todo
    Given url 'https://dummyjson.com/todos/add'
    And request { todo: 'Use DummyJSON in the project', completed: false, userId: 5 }
    When method Post
    Then status 201
    And print response
