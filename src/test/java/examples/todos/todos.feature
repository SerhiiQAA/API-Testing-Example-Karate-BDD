Feature: Karate Based Todos

Scenario: Get all todos
    Given url 'https://api.chucknorris.io/jokes/random'
    When method Get
    Then status 200
