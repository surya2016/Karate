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
@FR1
Feature: Add location in maps
  I want to add a location on maps

  Scenario: Verify location is added in maps
    Given url 'http://216.10.245.166/maps/api/place/add/json'
    And param key = 'qaclick123'
    And header Accept = 'application/json'
    When request read('data.json')
    And method post
    Then status 200
    And print 'Response is: ', response
    