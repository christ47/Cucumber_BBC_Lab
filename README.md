# Cucumber BBC Lab

The Cucumber BBC Lab test framework was created with Cucumber automation specifications. This required a Page Object Model to host methods necessary for navigating through the webpage. By utilising Capybara expressions and RSpec insertions, this framework is capable of testing the User Journey of signing up.

## Installing the Repository

This repository can be accessed through Christ 47's Github which can be located at the following address: https://github.com/christ47/cucumber_bbc_lab.

## Technologies

Capybara is a DSL which extends Selenium. It simulates scenarios for user stories and automates web application for behaviour driven development.


Cucumber is a Behaviour Driven Development (BDD) tool. It is a tool that executes plain-text functional descriptions as automated tests. The language that Cucumber understands is called Gherkin.

RSpec is a Testing tool for Ruby, created for behaviour-driven development. Focused on writing software that emphasizes the importance of self-documenting, executable tests that drive the development process from requirements analysis through acceptance testing.

## Data Table
Regex was utilised to run a Scenario Outline with different pieces of data located in a data table. Database rows contained the password and the their respective error. A grep identified the input variable, allowing for several scenarios to be run on a single step definition.
