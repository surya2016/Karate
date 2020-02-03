#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@FR
Feature: Demo Karate against jenkins api

  Scenario: Verify jenkins is up and running
    Given url 'http://localhost:8080/api/json?pretty=true'
    And header Accept = 'application/json'
    And header Authorization = call read('../../common/basic-auth.js') { username: 'root', password: 'root' }
    When method get
    Then status 200
    And match $.jobs[*].name contains ['TestPrd1']