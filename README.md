# Karate Template

# API Test Automation with Karate

Welcome to the repository showcasing my skills in API test automation using the Karate framework. This project demonstrates the power and simplicity of Karate for testing REST APIs.

## Table of Contents

- [Karate Template](#karate-template)
- [API Test Automation with Karate](#api-test-automation-with-karate)
  - [Table of Contents](#table-of-contents)
  - [Overview](#overview)
  - [BDD Approach](#bdd-approach)
    - [Example](#example)

## Overview

In this project, I've implemented several test scenarios to validate the functionality of a dummy API using Karate. The main focus is to demonstrate the ability to create, execute, and manage API tests efficiently.

## BDD Approach

Behavior-Driven Development (BDD) is an extension of Test-Driven Development (TDD) that encourages collaboration between developers, testers, and business analysts. The key idea is to write tests in a human-readable format that describes the desired behavior of the system.

In this project, we use Karate, which natively supports the BDD approach. Test scenarios are written in a Given-When-Then format, making them easy to understand and maintain.

### Example

Here's an example of a BDD-style test scenario written with Karate:

```java
Feature: Add a new todo

  Scenario: Add a new todo
    Given url 'https://dummyjson.com/todos/add'
    And request { todo: 'Use DummyJSON in the project', completed: false, userId: 5 }
    When method post
    Then status 201
    And print response
